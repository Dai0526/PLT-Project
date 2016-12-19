; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.3 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.7 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.9 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [2 x i8] c"a\00"
@string.10 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.12 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.13 = private unnamed_addr constant [2 x i8] c"r\00"
@string.14 = private unnamed_addr constant [9 x i8] c"test.txt\00"
@string.15 = private unnamed_addr constant [11 x i8] c"/go/*/gle/\00"

define i8* @substring(i32 %begin, i32 %end, i8* %s) {
entry:
  %begin1 = alloca i32
  store i32 %begin, i32* %begin1
  %end2 = alloca i32
  store i32 %end, i32* %end2
  %s3 = alloca i8*
  store i8* %s, i8** %s3
  %ans = alloca i8*
  %temp = alloca i8*
  %sublength = alloca i32
  %len = alloca i32
  %i = alloca i32
  %end4 = load i32, i32* %end2
  %begin5 = load i32, i32* %begin1
  %tmp = sub i32 %end4, %begin5
  %tmp6 = add i32 %tmp, 1
  store i32 %tmp6, i32* %sublength
  %s7 = load i8*, i8** %s3
  %len8 = call i32 @strlen(i8* %s7)
  store i32 %len8, i32* %len
  %sublength9 = load i32, i32* %sublength
  %tmpa = call i8* @calloc(i32 %sublength9, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %ans
  %len10 = load i32, i32* %len
  %tmpa11 = call i8* @calloc(i32 %len10, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa11, i8** %temp
  %s12 = load i8*, i8** %s3
  store i8* %s12, i8** %temp
  store i32 0, i32* %i
  %begin13 = load i32, i32* %begin1
  br label %while

while:                                            ; preds = %while_body, %entry
  %begin23 = load i32, i32* %begin1
  %end24 = load i32, i32* %end2
  %tmp25 = add i32 %end24, 1
  %tmp26 = icmp slt i32 %begin23, %tmp25
  br i1 %tmp26, label %while_body, label %merge

while_body:                                       ; preds = %while
  %ans14 = load i8*, i8** %ans
  %i15 = load i32, i32* %i
  %temp16 = load i8*, i8** %temp
  %begin17 = load i32, i32* %begin1
  %tmpp = getelementptr inbounds i8, i8* %temp16, i32 %begin17
  %deref = load i8, i8* %tmpp
  %tmpp18 = getelementptr inbounds i8, i8* %ans14, i32 %i15
  store i8 %deref, i8* %tmpp18
  %i19 = load i32, i32* %i
  %tmp20 = add i32 %i19, 1
  store i32 %tmp20, i32* %i
  %begin21 = load i32, i32* %begin1
  %tmp22 = add i32 %begin21, 1
  store i32 %tmp22, i32* %begin1
  br label %while

merge:                                            ; preds = %while
  %ans27 = load i8*, i8** %ans
  ret i8* %ans27
}

define i32 @indexOf(i8* %t, i8 %c) {
entry:
  %t1 = alloca i8*
  store i8* %t, i8** %t1
  %c2 = alloca i8
  store i8 %c, i8* %c2
  %idx = alloca i32
  %l = alloca i32
  %ans = alloca i32
  %t3 = load i8*, i8** %t1
  %len = call i32 @strlen(i8* %t3)
  store i32 %len, i32* %l
  store i32 0, i32* %idx
  store i32 0, i32* %ans
  br label %while

while:                                            ; preds = %merge, %entry
  %idx10 = load i32, i32* %idx
  %l11 = load i32, i32* %l
  %tmp12 = icmp slt i32 %idx10, %l11
  br i1 %tmp12, label %while_body, label %merge13

while_body:                                       ; preds = %while
  %t4 = load i8*, i8** %t1
  %idx5 = load i32, i32* %idx
  %tmpp = getelementptr inbounds i8, i8* %t4, i32 %idx5
  %deref = load i8, i8* %tmpp
  %c6 = load i8, i8* %c2
  %tmp = icmp eq i8 %deref, %c6
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  %idx8 = load i32, i32* %idx
  %tmp9 = add i32 %idx8, 1
  store i32 %tmp9, i32* %idx
  br label %while

then:                                             ; preds = %while_body
  %idx7 = load i32, i32* %idx
  store i32 %idx7, i32* %ans
  br label %merge

else:                                             ; preds = %while_body
  br label %merge

merge13:                                          ; preds = %while
  %ans14 = load i32, i32* %ans
  ret i32 %ans14
}

define i8* @appendChar(i8* %s, i8 %a) {
entry:
  %s1 = alloca i8*
  store i8* %s, i8** %s1
  %a2 = alloca i8
  store i8 %a, i8* %a2
  %ls = alloca i32
  %temp = alloca i8*
  %i = alloca i32
  store i32 0, i32* %i
  %s3 = load i8*, i8** %s1
  %len = call i32 @strlen(i8* %s3)
  store i32 %len, i32* %ls
  %ls4 = load i32, i32* %ls
  %tmp = add i32 %ls4, 1
  %tmpa = call i8* @calloc(i32 %tmp, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  br label %while

while:                                            ; preds = %while_body, %entry
  %i12 = load i32, i32* %i
  %ls13 = load i32, i32* %ls
  %tmp14 = icmp slt i32 %i12, %ls13
  br i1 %tmp14, label %while_body, label %merge

while_body:                                       ; preds = %while
  %temp5 = load i8*, i8** %temp
  %i6 = load i32, i32* %i
  %s7 = load i8*, i8** %s1
  %i8 = load i32, i32* %i
  %tmpp = getelementptr inbounds i8, i8* %s7, i32 %i8
  %deref = load i8, i8* %tmpp
  %tmpp9 = getelementptr inbounds i8, i8* %temp5, i32 %i6
  store i8 %deref, i8* %tmpp9
  %i10 = load i32, i32* %i
  %tmp11 = add i32 %i10, 1
  store i32 %tmp11, i32* %i
  br label %while

merge:                                            ; preds = %while
  %temp15 = load i8*, i8** %temp
  %ls16 = load i32, i32* %ls
  %a17 = load i8, i8* %a2
  %tmpp18 = getelementptr inbounds i8, i8* %temp15, i32 %ls16
  store i8 %a17, i8* %tmpp18
  %temp19 = load i8*, i8** %temp
  ret i8* %temp19
}

define i8* @mergeString(i8* %a, i8* %b) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %b2 = alloca i8*
  store i8* %b, i8** %b2
  %temp = alloca i8*
  %la = alloca i32
  %lb = alloca i32
  %l = alloca i32
  %i = alloca i32
  %j = alloca i32
  %a3 = load i8*, i8** %a1
  %len = call i32 @strlen(i8* %a3)
  store i32 %len, i32* %la
  %b4 = load i8*, i8** %b2
  %len5 = call i32 @strlen(i8* %b4)
  store i32 %len5, i32* %lb
  %la6 = load i32, i32* %la
  %lb7 = load i32, i32* %lb
  %tmp = add i32 %la6, %lb7
  store i32 %tmp, i32* %l
  %l8 = load i32, i32* %l
  %tmpa = call i8* @calloc(i32 %l8, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  store i32 0, i32* %i
  store i32 0, i32* %j
  br label %while

while:                                            ; preds = %while_body, %entry
  %j18 = load i32, i32* %j
  %la19 = load i32, i32* %la
  %tmp20 = icmp slt i32 %j18, %la19
  br i1 %tmp20, label %while_body, label %merge

while_body:                                       ; preds = %while
  %temp9 = load i8*, i8** %temp
  %j10 = load i32, i32* %j
  %a11 = load i8*, i8** %a1
  %i12 = load i32, i32* %i
  %tmpp = getelementptr inbounds i8, i8* %a11, i32 %i12
  %deref = load i8, i8* %tmpp
  %tmpp13 = getelementptr inbounds i8, i8* %temp9, i32 %j10
  store i8 %deref, i8* %tmpp13
  %i14 = load i32, i32* %i
  %tmp15 = add i32 %i14, 1
  store i32 %tmp15, i32* %i
  %j16 = load i32, i32* %j
  %tmp17 = add i32 %j16, 1
  store i32 %tmp17, i32* %j
  br label %while

merge:                                            ; preds = %while
  store i32 0, i32* %i
  br label %while21

while21:                                          ; preds = %while_body22, %merge
  %j34 = load i32, i32* %j
  %l35 = load i32, i32* %l
  %tmp36 = icmp slt i32 %j34, %l35
  br i1 %tmp36, label %while_body22, label %merge37

while_body22:                                     ; preds = %while21
  %temp23 = load i8*, i8** %temp
  %j24 = load i32, i32* %j
  %b25 = load i8*, i8** %b2
  %i26 = load i32, i32* %i
  %tmpp27 = getelementptr inbounds i8, i8* %b25, i32 %i26
  %deref28 = load i8, i8* %tmpp27
  %tmpp29 = getelementptr inbounds i8, i8* %temp23, i32 %j24
  store i8 %deref28, i8* %tmpp29
  %j30 = load i32, i32* %j
  %tmp31 = add i32 %j30, 1
  store i32 %tmp31, i32* %j
  %i32 = load i32, i32* %i
  %tmp33 = add i32 %i32, 1
  store i32 %tmp33, i32* %i
  br label %while21

merge37:                                          ; preds = %while21
  %temp38 = load i8*, i8** %temp
  ret i8* %temp38
}

define i32 @kleene(i8* %a, i8* %re) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %la = alloca i32
  %lre = alloca i32
  %len = alloca i32
  %lft = alloca i32
  %lsn = alloca i32
  %l = alloca i32
  %right = alloca i32
  %i = alloca i32
  %j = alloca i32
  %ltemp = alloca i32
  %key = alloca i8
  %ft = alloca i8*
  %sn = alloca i8*
  %temp = alloca i8*
  %word = alloca i8*
  %snmerge = alloca i8*
  %iffind = alloca i8*
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %find, i8** %null
  %re3 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re3, i8 42)
  store i32 %indexOf_result, i32* %idx
  %re4 = load i8*, i8** %re2
  %len5 = call i32 @strlen(i8* %re4)
  store i32 %len5, i32* %lre
  %re6 = load i8*, i8** %re2
  %idx7 = load i32, i32* %idx
  %tmp = sub i32 %idx7, 3
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re6)
  store i8* %substring_result, i8** %ft
  %re8 = load i8*, i8** %re2
  %lre9 = load i32, i32* %lre
  %tmp10 = sub i32 %lre9, 2
  %idx11 = load i32, i32* %idx
  %tmp12 = add i32 %idx11, 2
  %substring_result13 = call i8* @substring(i32 %tmp12, i32 %tmp10, i8* %re8)
  store i8* %substring_result13, i8** %sn
  %re14 = load i8*, i8** %re2
  %idx15 = load i32, i32* %idx
  %tmp16 = sub i32 %idx15, 2
  %tmpp = getelementptr inbounds i8, i8* %re14, i32 %tmp16
  %deref = load i8, i8* %tmpp
  store i8 %deref, i8* %key
  %a17 = load i8*, i8** %a1
  %len18 = call i32 @strlen(i8* %a17)
  store i32 %len18, i32* %la
  %ft19 = load i8*, i8** %ft
  %len20 = call i32 @strlen(i8* %ft19)
  store i32 %len20, i32* %lft
  %sn21 = load i8*, i8** %sn
  %len22 = call i32 @strlen(i8* %sn21)
  store i32 %len22, i32* %lsn
  %lsn23 = load i32, i32* %lsn
  %lft24 = load i32, i32* %lft
  %tmp25 = add i32 %lsn23, %lft24
  %tmp26 = sub i32 %tmp25, 1
  store i32 %tmp26, i32* %l
  store i32 0, i32* %j
  store i32 0, i32* %i
  store i32 1, i32* %right
  %tmpa = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  br label %while

while:                                            ; preds = %merge58, %entry
  %a63 = load i8*, i8** %a1
  %temp64 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp64, i32 1000, i8* %a63)
  %null65 = load i8*, i8** %null
  %tmp66 = icmp ne i8* %tmpz, %null65
  br i1 %tmp66, label %while_body, label %merge67

while_body:                                       ; preds = %while
  br label %while27

while27:                                          ; preds = %merge49, %while_body
  %l56 = load i32, i32* %l
  %tmp57 = icmp sle i32 %l56, 10
  br i1 %tmp57, label %while_body28, label %merge58

while_body28:                                     ; preds = %while27
  %tmpa29 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa29, i8** %word
  %ft30 = load i8*, i8** %ft
  %word31 = load i8*, i8** %word
  %mergeString_result = call i8* @mergeString(i8* %word31, i8* %ft30)
  store i8* %mergeString_result, i8** %word
  br label %while32

while32:                                          ; preds = %while_body33, %while_body28
  %j38 = load i32, i32* %j
  %i39 = load i32, i32* %i
  %tmp40 = icmp slt i32 %j38, %i39
  br i1 %tmp40, label %while_body33, label %merge

while_body33:                                     ; preds = %while32
  %key34 = load i8, i8* %key
  %word35 = load i8*, i8** %word
  %appendChar_result = call i8* @appendChar(i8* %word35, i8 %key34)
  store i8* %appendChar_result, i8** %word
  %j36 = load i32, i32* %j
  %tmp37 = add i32 %j36, 1
  store i32 %tmp37, i32* %j
  br label %while32

merge:                                            ; preds = %while32
  %sn41 = load i8*, i8** %sn
  %word42 = load i8*, i8** %word
  %mergeString_result43 = call i8* @mergeString(i8* %word42, i8* %sn41)
  store i8* %mergeString_result43, i8** %word
  %word44 = load i8*, i8** %word
  %temp45 = load i8*, i8** %temp
  %find46 = call i8* @strstr(i8* %temp45, i8* %word44)
  %null47 = load i8*, i8** %null
  %tmp48 = icmp ne i8* %find46, %null47
  br i1 %tmp48, label %then, label %else

merge49:                                          ; preds = %else, %then
  store i32 0, i32* %j
  %i52 = load i32, i32* %i
  %tmp53 = add i32 %i52, 1
  store i32 %tmp53, i32* %i
  %l54 = load i32, i32* %l
  %tmp55 = add i32 %l54, 1
  store i32 %tmp55, i32* %l
  br label %while27

then:                                             ; preds = %merge
  %word50 = load i8*, i8** %word
  %puts = call i8* (i8*, ...) @puts(i8* %word50)
  br label %merge49

else:                                             ; preds = %merge
  %tmpa51 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa51, i8** %word
  br label %merge49

merge58:                                          ; preds = %while27
  store i32 0, i32* %i
  %lsn59 = load i32, i32* %lsn
  %lft60 = load i32, i32* %lft
  %tmp61 = add i32 %lsn59, %lft60
  %tmp62 = sub i32 %tmp61, 1
  store i32 %tmp62, i32* %l
  store i32 0, i32* %j
  br label %while

merge67:                                          ; preds = %while
  ret i32 1
}

define i32 @main() {
entry:
  %a = alloca i8*
  %b = alloca i8*
  %c = alloca i8*
  %d = alloca i8*
  %fn = alloca i8*
  %f = alloca i8*
  %fopen = call i8* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @string.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.13, i32 0, i32 0))
  store i8* %fopen, i8** %f
  %f1 = load i8*, i8** %f
  %kleene_result = call i32 @kleene(i8* %f1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @string.15, i32 0, i32 0))
  ret i32 1
}

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i8* @fopen(i8*, i8*)

declare i32 @fclose(i32)

declare i32 @fputs(i32, i8*)

declare i8* @fgets(i8*, i32, i8*)

declare i32 @fwrite(i8*, i32, i32, i8*)

declare i32 @fread(i8*, i32, i32, i8*)

declare i8 @toupper(i8)

declare i8 @tolower(i8)

declare i8* @calloc(i32, i32)

declare i8* @strstr(i8*, i8*)

declare i8* @memcpy(i8*, i8*, i32)

declare i32 @strlen(i8*)
