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
@string.11 = private unnamed_addr constant [2 x i8] c"r\00"
@string.12 = private unnamed_addr constant [18 x i8] c"studentgrade2.csv\00"
@string.13 = private unnamed_addr constant [2 x i8] c"r\00"
@string.14 = private unnamed_addr constant [16 x i8] c"studentinfo.csv\00"
@string.15 = private unnamed_addr constant [2 x i8] c"w\00"
@string.16 = private unnamed_addr constant [15 x i8] c"mergedFIle.csv\00"
@string.17 = private unnamed_addr constant [2 x i8] c",\00"
@string.18 = private unnamed_addr constant [2 x i8] c",\00"
@string.19 = private unnamed_addr constant [2 x i8] c",\00"
@string.20 = private unnamed_addr constant [2 x i8] c"r\00"
@string.21 = private unnamed_addr constant [18 x i8] c"studentgrade2.csv\00"

define i32 @strEq(i8* %a, i8* %b) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %b2 = alloca i8*
  store i8* %b, i8** %b2
  %la = alloca i32
  %lb = alloca i32
  %ans = alloca i32
  %i = alloca i32
  store i32 1, i32* %ans
  store i32 0, i32* %i
  %a3 = load i8*, i8** %a1
  %len = call i32 @strlen(i8* %a3)
  store i32 %len, i32* %la
  %b4 = load i8*, i8** %b2
  %len5 = call i32 @strlen(i8* %b4)
  store i32 %len5, i32* %lb
  %la6 = load i32, i32* %la
  %lb7 = load i32, i32* %lb
  %tmp = icmp eq i32 %la6, %lb7
  br i1 %tmp, label %then, label %else23

merge:                                            ; preds = %else23, %merge22
  %ans24 = load i32, i32* %ans
  ret i32 %ans24

then:                                             ; preds = %entry
  br label %while

while:                                            ; preds = %merge15, %then
  %i19 = load i32, i32* %i
  %la20 = load i32, i32* %la
  %tmp21 = icmp slt i32 %i19, %la20
  br i1 %tmp21, label %while_body, label %merge22

while_body:                                       ; preds = %while
  %a8 = load i8*, i8** %a1
  %i9 = load i32, i32* %i
  %tmpp = getelementptr inbounds i8, i8* %a8, i32 %i9
  %deref = load i8, i8* %tmpp
  %b10 = load i8*, i8** %b2
  %i11 = load i32, i32* %i
  %tmpp12 = getelementptr inbounds i8, i8* %b10, i32 %i11
  %deref13 = load i8, i8* %tmpp12
  %tmp14 = icmp ne i8 %deref, %deref13
  br i1 %tmp14, label %then16, label %else

merge15:                                          ; preds = %else, %then16
  %i17 = load i32, i32* %i
  %tmp18 = add i32 %i17, 1
  store i32 %tmp18, i32* %i
  br label %while

then16:                                           ; preds = %while_body
  store i32 0, i32* %ans
  br label %merge15

else:                                             ; preds = %while_body
  br label %merge15

merge22:                                          ; preds = %while
  br label %merge

else23:                                           ; preds = %entry
  store i32 0, i32* %ans
  br label %merge
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
  %tmp20 = sub i32 %la19, 2
  %tmp21 = icmp slt i32 %j18, %tmp20
  br i1 %tmp21, label %while_body, label %merge

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
  br label %while22

while22:                                          ; preds = %while_body23, %merge
  %j35 = load i32, i32* %j
  %l36 = load i32, i32* %l
  %tmp37 = icmp slt i32 %j35, %l36
  br i1 %tmp37, label %while_body23, label %merge38

while_body23:                                     ; preds = %while22
  %temp24 = load i8*, i8** %temp
  %j25 = load i32, i32* %j
  %b26 = load i8*, i8** %b2
  %i27 = load i32, i32* %i
  %tmpp28 = getelementptr inbounds i8, i8* %b26, i32 %i27
  %deref29 = load i8, i8* %tmpp28
  %tmpp30 = getelementptr inbounds i8, i8* %temp24, i32 %j25
  store i8 %deref29, i8* %tmpp30
  %j31 = load i32, i32* %j
  %tmp32 = add i32 %j31, 1
  store i32 %tmp32, i32* %j
  %i33 = load i32, i32* %i
  %tmp34 = add i32 %i33, 1
  store i32 %tmp34, i32* %i
  br label %while22

merge38:                                          ; preds = %while22
  %temp39 = load i8*, i8** %temp
  ret i8* %temp39
}

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
  %idx11 = load i32, i32* %idx
  %l12 = load i32, i32* %l
  %tmp13 = icmp slt i32 %idx11, %l12
  br i1 %tmp13, label %while_body, label %merge14

while_body:                                       ; preds = %while
  %t4 = load i8*, i8** %t1
  %idx5 = load i32, i32* %idx
  %tmpp = getelementptr inbounds i8, i8* %t4, i32 %idx5
  %deref = load i8, i8* %tmpp
  %c6 = load i8, i8* %c2
  %tmp = icmp eq i8 %deref, %c6
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else
  %idx9 = load i32, i32* %idx
  %tmp10 = add i32 %idx9, 1
  store i32 %tmp10, i32* %idx
  br label %while

then:                                             ; preds = %while_body
  %idx7 = load i32, i32* %idx
  store i32 %idx7, i32* %ans
  %ans8 = load i32, i32* %ans
  ret i32 %ans8

else:                                             ; preds = %while_body
  br label %merge

merge14:                                          ; preds = %while
  ret i32 0
}

define i32 @main() {
entry:
  %fa = alloca i8*
  %fb = alloca i8*
  %fc = alloca i8*
  %temp1 = alloca i8*
  %temp2 = alloca i8*
  %target = alloca i8*
  %target2 = alloca i8*
  %total = alloca i8*
  %eq = alloca i32
  %newline = alloca i8*
  %grade = alloca i8*
  %com = alloca i8
  %idx = alloca i32
  %lenTemp1 = alloca i32
  %uni = alloca i8*
  %uni2 = alloca i8*
  %idx2 = alloca i32
  %test = alloca i32
  %lw1 = alloca i32
  %lw2 = alloca i32
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %find, i8** %null
  %fopen = call i8* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @string.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.11, i32 0, i32 0))
  store i8* %fopen, i8** %fa
  %fopen1 = call i8* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @string.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.13, i32 0, i32 0))
  store i8* %fopen1, i8** %fb
  %fopen2 = call i8* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @string.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.15, i32 0, i32 0))
  store i8* %fopen2, i8** %fc
  %tmpa = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp1
  %tmpa3 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa3, i8** %temp2
  %fb4 = load i8*, i8** %fb
  %temp15 = load i8*, i8** %temp1
  %tmpz = call i8* @fgets(i8* %temp15, i32 1000, i8* %fb4)
  %fa6 = load i8*, i8** %fa
  %temp27 = load i8*, i8** %temp2
  %tmpz8 = call i8* @fgets(i8* %temp27, i32 1000, i8* %fa6)
  br label %while

while:                                            ; preds = %merge55, %entry
  %fb57 = load i8*, i8** %fb
  %temp158 = load i8*, i8** %temp1
  %tmpz59 = call i8* @fgets(i8* %temp158, i32 1000, i8* %fb57)
  %null60 = load i8*, i8** %null
  %tmp61 = icmp ne i8* %tmpz59, %null60
  br i1 %tmp61, label %while_body, label %merge62

while_body:                                       ; preds = %while
  %temp19 = load i8*, i8** %temp1
  %len = call i32 @strlen(i8* %temp19)
  store i32 %len, i32* %test
  %test10 = load i32, i32* %test
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), i32 %test10)
  %temp111 = load i8*, i8** %temp1
  %find12 = call i8* @strstr(i8* %temp111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.17, i32 0, i32 0))
  store i8* %find12, i8** %target
  %target13 = load i8*, i8** %target
  %tmpp = getelementptr inbounds i8, i8* %target13, i32 0
  %deref = load i8, i8* %tmpp
  store i8 %deref, i8* %com
  %temp114 = load i8*, i8** %temp1
  %len15 = call i32 @strlen(i8* %temp114)
  store i32 %len15, i32* %lenTemp1
  %temp116 = load i8*, i8** %temp1
  %indexOf_result = call i32 @indexOf(i8* %temp116, i8 44)
  store i32 %indexOf_result, i32* %idx
  %temp117 = load i8*, i8** %temp1
  %idx18 = load i32, i32* %idx
  %tmp = sub i32 %idx18, 1
  %substring_result = call i8* @substring(i32 0, i32 %tmp, i8* %temp117)
  store i8* %substring_result, i8** %uni
  br label %while19

while19:                                          ; preds = %merge, %while_body
  %fa50 = load i8*, i8** %fa
  %temp251 = load i8*, i8** %temp2
  %tmpz52 = call i8* @fgets(i8* %temp251, i32 1000, i8* %fa50)
  %null53 = load i8*, i8** %null
  %tmp54 = icmp ne i8* %tmpz52, %null53
  br i1 %tmp54, label %while_body20, label %merge55

while_body20:                                     ; preds = %while19
  %uni21 = load i8*, i8** %uni
  %temp222 = load i8*, i8** %temp2
  %find23 = call i8* @strstr(i8* %temp222, i8* %uni21)
  store i8* %find23, i8** %grade
  %temp224 = load i8*, i8** %temp2
  %find25 = call i8* @strstr(i8* %temp224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.18, i32 0, i32 0))
  store i8* %find25, i8** %target
  %temp226 = load i8*, i8** %temp2
  %indexOf_result27 = call i32 @indexOf(i8* %temp226, i8 44)
  store i32 %indexOf_result27, i32* %idx2
  %temp228 = load i8*, i8** %temp2
  %idx29 = load i32, i32* %idx
  %tmp30 = sub i32 %idx29, 1
  %substring_result31 = call i8* @substring(i32 0, i32 %tmp30, i8* %temp228)
  store i8* %substring_result31, i8** %uni2
  %target32 = load i8*, i8** %target
  %find33 = call i8* @strstr(i8* %target32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.19, i32 0, i32 0))
  store i8* %find33, i8** %target
  %uni234 = load i8*, i8** %uni2
  %uni35 = load i8*, i8** %uni
  %strEq_result = call i32 @strEq(i8* %uni35, i8* %uni234)
  store i32 %strEq_result, i32* %eq
  %eq36 = load i32, i32* %eq
  %tmp37 = icmp eq i32 %eq36, 1
  br i1 %tmp37, label %then, label %else

merge:                                            ; preds = %else, %then
  br label %while19

then:                                             ; preds = %while_body20
  %target38 = load i8*, i8** %target
  %temp139 = load i8*, i8** %temp1
  %mergeString_result = call i8* @mergeString(i8* %temp139, i8* %target38)
  store i8* %mergeString_result, i8** %newline
  %temp140 = load i8*, i8** %temp1
  %len41 = call i32 @strlen(i8* %temp140)
  store i32 %len41, i32* %lw1
  %target42 = load i8*, i8** %target
  %len43 = call i32 @strlen(i8* %target42)
  store i32 %len43, i32* %lw2
  %fc44 = load i8*, i8** %fc
  %lw145 = load i32, i32* %lw1
  %lw246 = load i32, i32* %lw2
  %tmp47 = add i32 %lw145, %lw246
  %tmp48 = sub i32 %tmp47, 2
  %newline49 = load i8*, i8** %newline
  %tmpy = call i32 @fwrite(i8* %newline49, i32 1, i32 %tmp48, i8* %fc44)
  br label %merge

else:                                             ; preds = %while_body20
  br label %merge

merge55:                                          ; preds = %while19
  %fopen56 = call i8* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @string.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.20, i32 0, i32 0))
  store i8* %fopen56, i8** %fa
  br label %while

merge62:                                          ; preds = %while
  ret i32 0
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
