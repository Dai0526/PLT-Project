; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.3 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [2 x i8] c"a\00"
@string.6 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.8 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.9 = private unnamed_addr constant [2 x i8] c"a\00"
@string.10 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.12 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.13 = private unnamed_addr constant [2 x i8] c"a\00"
@string.14 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.16 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.17 = private unnamed_addr constant [2 x i8] c"a\00"
@string.18 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.20 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.21 = private unnamed_addr constant [2 x i8] c"a\00"
@string.22 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.23 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.24 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.25 = private unnamed_addr constant [2 x i8] c"a\00"
@string.26 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.27 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.28 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.29 = private unnamed_addr constant [2 x i8] c"a\00"
@string.30 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.31 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.32 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.33 = private unnamed_addr constant [2 x i8] c"a\00"
@string.34 = private unnamed_addr constant [1 x i8] zeroinitializer
@string.35 = private unnamed_addr constant [2 x i8] c"r\00"
@string.36 = private unnamed_addr constant [2 x i8] c"&\00"
@string.37 = private unnamed_addr constant [2 x i8] c"|\00"
@string.38 = private unnamed_addr constant [2 x i8] c"?\00"
@string.39 = private unnamed_addr constant [2 x i8] c"^\00"
@string.40 = private unnamed_addr constant [2 x i8] c"-\00"
@string.41 = private unnamed_addr constant [2 x i8] c"*\00"
@fmt.42 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.43 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.44 = private unnamed_addr constant [22 x i8] c"pb_log.20160623.nginx\00"
@string.45 = private unnamed_addr constant [52 x i8] c"show logs has query wo*w such as ww wow woow wooow:\00"
@string.46 = private unnamed_addr constant [9 x i8] c"/fo/*/l/\00"

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

define i32 @searchKleene(i8* %f, i8* %re) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %lt = alloca i32
  %t1 = alloca i8*
  %t2 = alloca i8*
  %temp = alloca i8*
  %begin = alloca i32
  %end = alloca i32
  %middle = alloca i8*
  %ans = alloca i8*
  %head = alloca i8*
  %tail = alloca i8*
  %len1 = alloca i32
  %len2 = alloca i32
  %len = alloca i32
  %lent2 = alloca i32
  %idx1 = alloca i32
  %idx2 = alloca i32
  %tempidx = alloca i32
  %tempans = alloca i8*
  %templen = alloca i32
  %totallen = alloca i32
  %j = alloca i32
  %right = alloca i32
  %len5 = alloca i32
  %key = alloca i8
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %find, i8** %null
  store i32 0, i32* %j
  store i32 1, i32* %right
  %re3 = load i8*, i8** %re2
  %len4 = call i32 @strlen(i8* %re3)
  store i32 %len4, i32* %lt
  %re5 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re5, i8 42)
  store i32 %indexOf_result, i32* %idx
  %re6 = load i8*, i8** %re2
  %idx7 = load i32, i32* %idx
  %tmp = sub i32 %idx7, 3
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re6)
  store i8* %substring_result, i8** %t1
  %re8 = load i8*, i8** %re2
  %lt9 = load i32, i32* %lt
  %tmp10 = sub i32 %lt9, 2
  %idx11 = load i32, i32* %idx
  %tmp12 = add i32 %idx11, 2
  %substring_result13 = call i8* @substring(i32 %tmp12, i32 %tmp10, i8* %re8)
  store i8* %substring_result13, i8** %t2
  %re14 = load i8*, i8** %re2
  %idx15 = load i32, i32* %idx
  %tmp16 = sub i32 %idx15, 2
  %tmpp = getelementptr inbounds i8, i8* %re14, i32 %tmp16
  %deref = load i8, i8* %tmpp
  store i8 %deref, i8* %key
  %tmpa = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  %tmpa17 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa17, i8** %head
  %tmpa18 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa18, i8** %tail
  %tmpa19 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa19, i8** %ans
  br label %while

while:                                            ; preds = %merge, %entry
  %f100 = load i8*, i8** %f1
  %temp101 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp101, i32 1000, i8* %f100)
  %null102 = load i8*, i8** %null
  %tmp103 = icmp ne i8* %tmpz, %null102
  br i1 %tmp103, label %while_body, label %merge104

while_body:                                       ; preds = %while
  %t120 = load i8*, i8** %t1
  %temp21 = load i8*, i8** %temp
  %find22 = call i8* @strstr(i8* %temp21, i8* %t120)
  store i8* %find22, i8** %head
  %head23 = load i8*, i8** %head
  %puts = call i8* (i8*, ...) @puts(i8* %head23)
  %head24 = load i8*, i8** %head
  %null25 = load i8*, i8** %null
  %tmp26 = icmp ne i8* %head24, %null25
  br i1 %tmp26, label %then, label %else99

merge:                                            ; preds = %else99, %merge33
  br label %while

then:                                             ; preds = %while_body
  %t227 = load i8*, i8** %t2
  %temp28 = load i8*, i8** %temp
  %find29 = call i8* @strstr(i8* %temp28, i8* %t227)
  store i8* %find29, i8** %tail
  %tail30 = load i8*, i8** %tail
  %null31 = load i8*, i8** %null
  %tmp32 = icmp ne i8* %tail30, %null31
  br i1 %tmp32, label %then34, label %else98

merge33:                                          ; preds = %else98, %merge68
  br label %merge

then34:                                           ; preds = %then
  %head35 = load i8*, i8** %head
  %len36 = call i32 @strlen(i8* %head35)
  store i32 %len36, i32* %len1
  %tail37 = load i8*, i8** %tail
  %len38 = call i32 @strlen(i8* %tail37)
  store i32 %len38, i32* %len2
  %len139 = load i32, i32* %len1
  %len240 = load i32, i32* %len2
  %tmp41 = sub i32 %len139, %len240
  store i32 %tmp41, i32* %end
  %t242 = load i8*, i8** %t2
  %len43 = call i32 @strlen(i8* %t242)
  store i32 %len43, i32* %lent2
  %end44 = load i32, i32* %end
  %lent245 = load i32, i32* %lent2
  %tmp46 = add i32 %end44, %lent245
  %tmp47 = sub i32 %tmp46, 1
  store i32 %tmp47, i32* %end
  %head48 = load i8*, i8** %head
  %end49 = load i32, i32* %end
  %substring_result50 = call i8* @substring(i32 0, i32 %end49, i8* %head48)
  store i8* %substring_result50, i8** %ans
  %ans51 = load i8*, i8** %ans
  %len52 = call i32 @strlen(i8* %ans51)
  store i32 %len52, i32* %totallen
  %t153 = load i8*, i8** %t1
  %len54 = call i32 @strlen(i8* %t153)
  store i32 %len54, i32* %idx1
  %t255 = load i8*, i8** %t2
  %len56 = call i32 @strlen(i8* %t255)
  store i32 %len56, i32* %templen
  %totallen57 = load i32, i32* %totallen
  %templen58 = load i32, i32* %templen
  %tmp59 = sub i32 %totallen57, %templen58
  store i32 %tmp59, i32* %idx2
  %ans60 = load i8*, i8** %ans
  %idx261 = load i32, i32* %idx2
  %tmp62 = sub i32 %idx261, 1
  %idx163 = load i32, i32* %idx1
  %substring_result64 = call i8* @substring(i32 %idx163, i32 %tmp62, i8* %ans60)
  store i8* %substring_result64, i8** %tempans
  %idx165 = load i32, i32* %idx1
  %idx266 = load i32, i32* %idx2
  %tmp67 = icmp eq i32 %idx165, %idx266
  br i1 %tmp67, label %then69, label %else

merge68:                                          ; preds = %merge93, %then69
  br label %merge33

then69:                                           ; preds = %then34
  %ans70 = load i8*, i8** %ans
  %puts71 = call i8* (i8*, ...) @puts(i8* %ans70)
  br label %merge68

else:                                             ; preds = %then34
  %tempans72 = load i8*, i8** %tempans
  %len73 = call i32 @strlen(i8* %tempans72)
  store i32 %len73, i32* %len5
  br label %while74

while74:                                          ; preds = %merge82, %else
  %j87 = load i32, i32* %j
  %len588 = load i32, i32* %len5
  %tmp89 = icmp slt i32 %j87, %len588
  br i1 %tmp89, label %while_body75, label %merge90

while_body75:                                     ; preds = %while74
  %tempans76 = load i8*, i8** %tempans
  %j77 = load i32, i32* %j
  %tmpp78 = getelementptr inbounds i8, i8* %tempans76, i32 %j77
  %deref79 = load i8, i8* %tmpp78
  %key80 = load i8, i8* %key
  %tmp81 = icmp ne i8 %deref79, %key80
  br i1 %tmp81, label %then83, label %else84

merge82:                                          ; preds = %else84, %then83
  %j85 = load i32, i32* %j
  %tmp86 = add i32 %j85, 1
  store i32 %tmp86, i32* %j
  br label %while74

then83:                                           ; preds = %while_body75
  store i32 0, i32* %right
  br label %merge82

else84:                                           ; preds = %while_body75
  br label %merge82

merge90:                                          ; preds = %while74
  %right91 = load i32, i32* %right
  %tmp92 = icmp eq i32 %right91, 1
  br i1 %tmp92, label %then94, label %else97

merge93:                                          ; preds = %else97, %then94
  br label %merge68

then94:                                           ; preds = %merge90
  %ans95 = load i8*, i8** %ans
  %puts96 = call i8* (i8*, ...) @puts(i8* %ans95)
  br label %merge93

else97:                                           ; preds = %merge90
  br label %merge93

else98:                                           ; preds = %then
  br label %merge33

else99:                                           ; preds = %while_body
  br label %merge

merge104:                                         ; preds = %while
  ret i32 1
}

define i32 @searchBetween(i8* %f, i8* %re) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %lt = alloca i32
  %t1 = alloca i8*
  %t2 = alloca i8*
  %temp = alloca i8*
  %begin = alloca i32
  %end = alloca i32
  %middle = alloca i8*
  %ans = alloca i8*
  %head = alloca i8*
  %tail = alloca i8*
  %len1 = alloca i32
  %len2 = alloca i32
  %len = alloca i32
  %lent2 = alloca i32
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.9, i32 0, i32 0))
  store i8* %find, i8** %null
  %re3 = load i8*, i8** %re2
  %len4 = call i32 @strlen(i8* %re3)
  store i32 %len4, i32* %lt
  %re5 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re5, i8 45)
  store i32 %indexOf_result, i32* %idx
  %re6 = load i8*, i8** %re2
  %idx7 = load i32, i32* %idx
  %tmp = sub i32 %idx7, 2
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re6)
  store i8* %substring_result, i8** %t1
  %re8 = load i8*, i8** %re2
  %lt9 = load i32, i32* %lt
  %tmp10 = sub i32 %lt9, 2
  %idx11 = load i32, i32* %idx
  %tmp12 = add i32 %idx11, 2
  %substring_result13 = call i8* @substring(i32 %tmp12, i32 %tmp10, i8* %re8)
  store i8* %substring_result13, i8** %t2
  %tmpa = call i8* @calloc(i32 100000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  %tmpa14 = call i8* @calloc(i32 100000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa14, i8** %head
  %tmpa15 = call i8* @calloc(i32 100000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa15, i8** %tail
  %tmpa16 = call i8* @calloc(i32 100000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa16, i8** %ans
  br label %while

while:                                            ; preds = %merge, %entry
  %f48 = load i8*, i8** %f1
  %temp49 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp49, i32 100000, i8* %f48)
  %null50 = load i8*, i8** %null
  %tmp51 = icmp ne i8* %tmpz, %null50
  br i1 %tmp51, label %while_body, label %merge52

while_body:                                       ; preds = %while
  %t117 = load i8*, i8** %t1
  %temp18 = load i8*, i8** %temp
  %find19 = call i8* @strstr(i8* %temp18, i8* %t117)
  store i8* %find19, i8** %head
  %head20 = load i8*, i8** %head
  %null21 = load i8*, i8** %null
  %tmp22 = icmp ne i8* %head20, %null21
  br i1 %tmp22, label %then, label %else47

merge:                                            ; preds = %else47, %merge29
  br label %while

then:                                             ; preds = %while_body
  %t223 = load i8*, i8** %t2
  %temp24 = load i8*, i8** %temp
  %find25 = call i8* @strstr(i8* %temp24, i8* %t223)
  store i8* %find25, i8** %tail
  %tail26 = load i8*, i8** %tail
  %null27 = load i8*, i8** %null
  %tmp28 = icmp ne i8* %tail26, %null27
  br i1 %tmp28, label %then30, label %else

merge29:                                          ; preds = %else, %then30
  br label %merge

then30:                                           ; preds = %then
  %head31 = load i8*, i8** %head
  %len32 = call i32 @strlen(i8* %head31)
  store i32 %len32, i32* %len1
  %tail33 = load i8*, i8** %tail
  %len34 = call i32 @strlen(i8* %tail33)
  store i32 %len34, i32* %len2
  %len135 = load i32, i32* %len1
  %len236 = load i32, i32* %len2
  %tmp37 = sub i32 %len135, %len236
  store i32 %tmp37, i32* %end
  %t238 = load i8*, i8** %t2
  %len39 = call i32 @strlen(i8* %t238)
  store i32 %len39, i32* %lent2
  %end40 = load i32, i32* %end
  %lent241 = load i32, i32* %lent2
  %tmp42 = add i32 %end40, %lent241
  store i32 %tmp42, i32* %end
  %head43 = load i8*, i8** %head
  %end44 = load i32, i32* %end
  %substring_result45 = call i8* @substring(i32 0, i32 %end44, i8* %head43)
  store i8* %substring_result45, i8** %ans
  %ans46 = load i8*, i8** %ans
  %puts = call i8* (i8*, ...) @puts(i8* %ans46)
  br label %merge29

else:                                             ; preds = %then
  br label %merge29

else47:                                           ; preds = %while_body
  br label %merge

merge52:                                          ; preds = %while
  ret i32 1
}

define i32 @searchQ(i8* %f, i8* %re) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %lt = alloca i32
  %t1 = alloca i8*
  %t2 = alloca i8*
  %temp = alloca i8*
  %idx2 = alloca i32
  %t3 = alloca i8*
  %len1 = alloca i32
  %len2 = alloca i32
  %len3 = alloca i32
  %idx3 = alloca i32
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.13, i32 0, i32 0))
  store i8* %find, i8** %null
  %re3 = load i8*, i8** %re2
  %len = call i32 @strlen(i8* %re3)
  store i32 %len, i32* %lt
  %re4 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re4, i8 63)
  store i32 %indexOf_result, i32* %idx
  %re5 = load i8*, i8** %re2
  %idx6 = load i32, i32* %idx
  %tmp = sub i32 %idx6, 2
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re5)
  store i8* %substring_result, i8** %t1
  %re7 = load i8*, i8** %re2
  %lt8 = load i32, i32* %lt
  %tmp9 = sub i32 %lt8, 2
  %idx10 = load i32, i32* %idx
  %tmp11 = add i32 %idx10, 2
  %substring_result12 = call i8* @substring(i32 %tmp11, i32 %tmp9, i8* %re7)
  store i8* %substring_result12, i8** %t2
  %t113 = load i8*, i8** %t1
  %len14 = call i32 @strlen(i8* %t113)
  store i32 %len14, i32* %len1
  %t215 = load i8*, i8** %t2
  %len16 = call i32 @strlen(i8* %t215)
  store i32 %len16, i32* %len2
  %len117 = load i32, i32* %len1
  %len218 = load i32, i32* %len2
  %tmp19 = add i32 %len117, %len218
  store i32 %tmp19, i32* %len3
  %len320 = load i32, i32* %len3
  %tmpa = call i8* @calloc(i32 %len320, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %t3
  store i32 0, i32* %idx2
  store i32 0, i32* %idx3
  br label %while

while:                                            ; preds = %while_body, %entry
  %idx230 = load i32, i32* %idx2
  %len131 = load i32, i32* %len1
  %tmp32 = icmp slt i32 %idx230, %len131
  br i1 %tmp32, label %while_body, label %merge

while_body:                                       ; preds = %while
  %t321 = load i8*, i8** %t3
  %idx322 = load i32, i32* %idx3
  %t123 = load i8*, i8** %t1
  %idx224 = load i32, i32* %idx2
  %tmpp = getelementptr inbounds i8, i8* %t123, i32 %idx224
  %deref = load i8, i8* %tmpp
  %tmpp25 = getelementptr inbounds i8, i8* %t321, i32 %idx322
  store i8 %deref, i8* %tmpp25
  %idx326 = load i32, i32* %idx3
  %tmp27 = add i32 %idx326, 1
  store i32 %tmp27, i32* %idx3
  %idx228 = load i32, i32* %idx2
  %tmp29 = add i32 %idx228, 1
  store i32 %tmp29, i32* %idx2
  br label %while

merge:                                            ; preds = %while
  store i32 0, i32* %idx2
  br label %while33

while33:                                          ; preds = %while_body34, %merge
  %idx246 = load i32, i32* %idx2
  %len247 = load i32, i32* %len2
  %tmp48 = icmp slt i32 %idx246, %len247
  br i1 %tmp48, label %while_body34, label %merge49

while_body34:                                     ; preds = %while33
  %t335 = load i8*, i8** %t3
  %idx336 = load i32, i32* %idx3
  %t237 = load i8*, i8** %t2
  %idx238 = load i32, i32* %idx2
  %tmpp39 = getelementptr inbounds i8, i8* %t237, i32 %idx238
  %deref40 = load i8, i8* %tmpp39
  %tmpp41 = getelementptr inbounds i8, i8* %t335, i32 %idx336
  store i8 %deref40, i8* %tmpp41
  %idx342 = load i32, i32* %idx3
  %tmp43 = add i32 %idx342, 1
  store i32 %tmp43, i32* %idx3
  %idx244 = load i32, i32* %idx2
  %tmp45 = add i32 %idx244, 1
  store i32 %tmp45, i32* %idx2
  br label %while33

merge49:                                          ; preds = %while33
  %tmpa50 = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa50, i8** %temp
  br label %while51

while51:                                          ; preds = %merge58, %merge49
  %f70 = load i8*, i8** %f1
  %temp71 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp71, i32 1000, i8* %f70)
  %null72 = load i8*, i8** %null
  %tmp73 = icmp ne i8* %tmpz, %null72
  br i1 %tmp73, label %while_body52, label %merge74

while_body52:                                     ; preds = %while51
  %t153 = load i8*, i8** %t1
  %temp54 = load i8*, i8** %temp
  %find55 = call i8* @strstr(i8* %temp54, i8* %t153)
  %null56 = load i8*, i8** %null
  %tmp57 = icmp ne i8* %find55, %null56
  br i1 %tmp57, label %then, label %else

merge58:                                          ; preds = %merge65, %then
  br label %while51

then:                                             ; preds = %while_body52
  %temp59 = load i8*, i8** %temp
  %puts = call i8* (i8*, ...) @puts(i8* %temp59)
  br label %merge58

else:                                             ; preds = %while_body52
  %t260 = load i8*, i8** %t2
  %temp61 = load i8*, i8** %temp
  %find62 = call i8* @strstr(i8* %temp61, i8* %t260)
  %null63 = load i8*, i8** %null
  %tmp64 = icmp ne i8* %find62, %null63
  br i1 %tmp64, label %then66, label %else69

merge65:                                          ; preds = %else69, %then66
  br label %merge58

then66:                                           ; preds = %else
  %temp67 = load i8*, i8** %temp
  %puts68 = call i8* (i8*, ...) @puts(i8* %temp67)
  br label %merge65

else69:                                           ; preds = %else
  br label %merge65

merge74:                                          ; preds = %while51
  ret i32 1
}

define i32 @searchEOR(i8* %f, i8* %re) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %lt = alloca i32
  %t1 = alloca i8*
  %t2 = alloca i8*
  %temp = alloca i8*
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.17, i32 0, i32 0))
  store i8* %find, i8** %null
  %re3 = load i8*, i8** %re2
  %len = call i32 @strlen(i8* %re3)
  store i32 %len, i32* %lt
  %re4 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re4, i8 94)
  store i32 %indexOf_result, i32* %idx
  %re5 = load i8*, i8** %re2
  %idx6 = load i32, i32* %idx
  %tmp = sub i32 %idx6, 2
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re5)
  store i8* %substring_result, i8** %t1
  %re7 = load i8*, i8** %re2
  %lt8 = load i32, i32* %lt
  %tmp9 = sub i32 %lt8, 2
  %idx10 = load i32, i32* %idx
  %tmp11 = add i32 %idx10, 2
  %substring_result12 = call i8* @substring(i32 %tmp11, i32 %tmp9, i8* %re7)
  store i8* %substring_result12, i8** %t2
  %tmpa = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  br label %while

while:                                            ; preds = %merge, %entry
  %f37 = load i8*, i8** %f1
  %temp38 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp38, i32 1000, i8* %f37)
  %null39 = load i8*, i8** %null
  %tmp40 = icmp ne i8* %tmpz, %null39
  br i1 %tmp40, label %while_body, label %merge41

while_body:                                       ; preds = %while
  %t113 = load i8*, i8** %t1
  %temp14 = load i8*, i8** %temp
  %find15 = call i8* @strstr(i8* %temp14, i8* %t113)
  %null16 = load i8*, i8** %null
  %tmp17 = icmp ne i8* %find15, %null16
  br i1 %tmp17, label %then, label %else26

merge:                                            ; preds = %merge32, %merge23
  br label %while

then:                                             ; preds = %while_body
  %t218 = load i8*, i8** %t2
  %temp19 = load i8*, i8** %temp
  %find20 = call i8* @strstr(i8* %temp19, i8* %t218)
  %null21 = load i8*, i8** %null
  %tmp22 = icmp eq i8* %find20, %null21
  br i1 %tmp22, label %then24, label %else

merge23:                                          ; preds = %else, %then24
  br label %merge

then24:                                           ; preds = %then
  %temp25 = load i8*, i8** %temp
  %puts = call i8* (i8*, ...) @puts(i8* %temp25)
  br label %merge23

else:                                             ; preds = %then
  br label %merge23

else26:                                           ; preds = %while_body
  %t227 = load i8*, i8** %t2
  %temp28 = load i8*, i8** %temp
  %find29 = call i8* @strstr(i8* %temp28, i8* %t227)
  %null30 = load i8*, i8** %null
  %tmp31 = icmp ne i8* %find29, %null30
  br i1 %tmp31, label %then33, label %else36

merge32:                                          ; preds = %else36, %then33
  br label %merge

then33:                                           ; preds = %else26
  %temp34 = load i8*, i8** %temp
  %puts35 = call i8* (i8*, ...) @puts(i8* %temp34)
  br label %merge32

else36:                                           ; preds = %else26
  br label %merge32

merge41:                                          ; preds = %while
  ret i32 1
}

define i32 @searchOr(i8* %f, i8* %re) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %lt = alloca i32
  %t1 = alloca i8*
  %t2 = alloca i8*
  %temp = alloca i8*
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.21, i32 0, i32 0))
  store i8* %find, i8** %null
  %re3 = load i8*, i8** %re2
  %len = call i32 @strlen(i8* %re3)
  store i32 %len, i32* %lt
  %re4 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re4, i8 124)
  store i32 %indexOf_result, i32* %idx
  %re5 = load i8*, i8** %re2
  %idx6 = load i32, i32* %idx
  %tmp = sub i32 %idx6, 2
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re5)
  store i8* %substring_result, i8** %t1
  %re7 = load i8*, i8** %re2
  %lt8 = load i32, i32* %lt
  %tmp9 = sub i32 %lt8, 2
  %idx10 = load i32, i32* %idx
  %tmp11 = add i32 %idx10, 2
  %substring_result12 = call i8* @substring(i32 %tmp11, i32 %tmp9, i8* %re7)
  store i8* %substring_result12, i8** %t2
  %tmpa = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  br label %while

while:                                            ; preds = %merge, %entry
  %f29 = load i8*, i8** %f1
  %temp30 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp30, i32 1000, i8* %f29)
  %null31 = load i8*, i8** %null
  %tmp32 = icmp ne i8* %tmpz, %null31
  br i1 %tmp32, label %while_body, label %merge33

while_body:                                       ; preds = %while
  %t113 = load i8*, i8** %t1
  %temp14 = load i8*, i8** %temp
  %find15 = call i8* @strstr(i8* %temp14, i8* %t113)
  %null16 = load i8*, i8** %null
  %tmp17 = icmp ne i8* %find15, %null16
  br i1 %tmp17, label %then, label %else

merge:                                            ; preds = %merge24, %then
  br label %while

then:                                             ; preds = %while_body
  %temp18 = load i8*, i8** %temp
  %puts = call i8* (i8*, ...) @puts(i8* %temp18)
  br label %merge

else:                                             ; preds = %while_body
  %t219 = load i8*, i8** %t2
  %temp20 = load i8*, i8** %temp
  %find21 = call i8* @strstr(i8* %temp20, i8* %t219)
  %null22 = load i8*, i8** %null
  %tmp23 = icmp ne i8* %find21, %null22
  br i1 %tmp23, label %then25, label %else28

merge24:                                          ; preds = %else28, %then25
  br label %merge

then25:                                           ; preds = %else
  %temp26 = load i8*, i8** %temp
  %puts27 = call i8* (i8*, ...) @puts(i8* %temp26)
  br label %merge24

else28:                                           ; preds = %else
  br label %merge24

merge33:                                          ; preds = %while
  ret i32 1
}

define i32 @searchAnd(i8* %f, i8* %re) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %idx = alloca i32
  %lt = alloca i32
  %t1 = alloca i8*
  %t2 = alloca i8*
  %temp = alloca i8*
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.25, i32 0, i32 0))
  store i8* %find, i8** %null
  %re3 = load i8*, i8** %re2
  %len = call i32 @strlen(i8* %re3)
  store i32 %len, i32* %lt
  %re4 = load i8*, i8** %re2
  %indexOf_result = call i32 @indexOf(i8* %re4, i8 38)
  store i32 %indexOf_result, i32* %idx
  %re5 = load i8*, i8** %re2
  %idx6 = load i32, i32* %idx
  %tmp = sub i32 %idx6, 2
  %substring_result = call i8* @substring(i32 1, i32 %tmp, i8* %re5)
  store i8* %substring_result, i8** %t1
  %re7 = load i8*, i8** %re2
  %lt8 = load i32, i32* %lt
  %tmp9 = sub i32 %lt8, 2
  %idx10 = load i32, i32* %idx
  %tmp11 = add i32 %idx10, 2
  %substring_result12 = call i8* @substring(i32 %tmp11, i32 %tmp9, i8* %re7)
  store i8* %substring_result12, i8** %t2
  %tmpa = call i8* @calloc(i32 1000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  br label %while

while:                                            ; preds = %merge, %entry
  %f27 = load i8*, i8** %f1
  %temp28 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp28, i32 1000, i8* %f27)
  %null29 = load i8*, i8** %null
  %tmp30 = icmp ne i8* %tmpz, %null29
  br i1 %tmp30, label %while_body, label %merge31

while_body:                                       ; preds = %while
  %t113 = load i8*, i8** %t1
  %temp14 = load i8*, i8** %temp
  %find15 = call i8* @strstr(i8* %temp14, i8* %t113)
  %null16 = load i8*, i8** %null
  %tmp17 = icmp ne i8* %find15, %null16
  br i1 %tmp17, label %then, label %else26

merge:                                            ; preds = %else26, %merge23
  br label %while

then:                                             ; preds = %while_body
  %t218 = load i8*, i8** %t2
  %temp19 = load i8*, i8** %temp
  %find20 = call i8* @strstr(i8* %temp19, i8* %t218)
  %null21 = load i8*, i8** %null
  %tmp22 = icmp ne i8* %find20, %null21
  br i1 %tmp22, label %then24, label %else

merge23:                                          ; preds = %else, %then24
  br label %merge

then24:                                           ; preds = %then
  %temp25 = load i8*, i8** %temp
  %puts = call i8* (i8*, ...) @puts(i8* %temp25)
  br label %merge23

else:                                             ; preds = %then
  br label %merge23

else26:                                           ; preds = %while_body
  br label %merge

merge31:                                          ; preds = %while
  ret i32 1
}

define i32 @searchLine(i8* %f, i8* %a) {
entry:
  %f1 = alloca i8*
  store i8* %f, i8** %f1
  %a2 = alloca i8*
  store i8* %a, i8** %a2
  %temp = alloca i8*
  %null = alloca i8*
  %tmpa = call i8* @calloc(i32 1000000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.29, i32 0, i32 0))
  store i8* %find, i8** %null
  br label %while

while:                                            ; preds = %merge, %entry
  %f8 = load i8*, i8** %f1
  %temp9 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp9, i32 1000, i8* %f8)
  %null10 = load i8*, i8** %null
  %tmp11 = icmp ne i8* %tmpz, %null10
  br i1 %tmp11, label %while_body, label %merge12

while_body:                                       ; preds = %while
  %a3 = load i8*, i8** %a2
  %temp4 = load i8*, i8** %temp
  %find5 = call i8* @strstr(i8* %temp4, i8* %a3)
  %null6 = load i8*, i8** %null
  %tmp = icmp ne i8* %find5, %null6
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  br label %while

then:                                             ; preds = %while_body
  %temp7 = load i8*, i8** %temp
  %puts = call i8* (i8*, ...) @puts(i8* %temp7)
  br label %merge

else:                                             ; preds = %while_body
  br label %merge

merge12:                                          ; preds = %while
  ret i32 1
}

define i32 @tape(i8* %fn, i8* %re) {
entry:
  %fn1 = alloca i8*
  store i8* %fn, i8** %fn1
  %re2 = alloca i8*
  store i8* %re, i8** %re2
  %key = alloca i8
  %f = alloca i8*
  %null = alloca i8*
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.33, i32 0, i32 0))
  store i8* %find, i8** %null
  %fn3 = load i8*, i8** %fn1
  %fopen = call i8* @fopen(i8* %fn3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.35, i32 0, i32 0))
  store i8* %fopen, i8** %f
  %re4 = load i8*, i8** %re2
  %tmpp = getelementptr inbounds i8, i8* %re4, i32 0
  %deref = load i8, i8* %tmpp
  %tmp = icmp eq i8 %deref, 47
  br i1 %tmp, label %then, label %else58

merge:                                            ; preds = %else58, %merge53
  ret i32 0

then:                                             ; preds = %entry
  %re5 = load i8*, i8** %re2
  %find6 = call i8* @strstr(i8* %re5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.36, i32 0, i32 0))
  %null7 = load i8*, i8** %null
  %tmp8 = icmp ne i8* %find6, %null7
  br i1 %tmp8, label %then10, label %else

merge9:                                           ; preds = %else, %then10
  %re13 = load i8*, i8** %re2
  %find14 = call i8* @strstr(i8* %re13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.37, i32 0, i32 0))
  %null15 = load i8*, i8** %null
  %tmp16 = icmp ne i8* %find14, %null15
  br i1 %tmp16, label %then18, label %else21

then10:                                           ; preds = %then
  %re11 = load i8*, i8** %re2
  %f12 = load i8*, i8** %f
  %searchAnd_result = call i32 @searchAnd(i8* %f12, i8* %re11)
  br label %merge9

else:                                             ; preds = %then
  br label %merge9

merge17:                                          ; preds = %else21, %then18
  %re22 = load i8*, i8** %re2
  %find23 = call i8* @strstr(i8* %re22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.38, i32 0, i32 0))
  %null24 = load i8*, i8** %null
  %tmp25 = icmp ne i8* %find23, %null24
  br i1 %tmp25, label %then27, label %else30

then18:                                           ; preds = %merge9
  %re19 = load i8*, i8** %re2
  %f20 = load i8*, i8** %f
  %searchOr_result = call i32 @searchOr(i8* %f20, i8* %re19)
  br label %merge17

else21:                                           ; preds = %merge9
  br label %merge17

merge26:                                          ; preds = %else30, %then27
  %re31 = load i8*, i8** %re2
  %find32 = call i8* @strstr(i8* %re31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.39, i32 0, i32 0))
  %null33 = load i8*, i8** %null
  %tmp34 = icmp ne i8* %find32, %null33
  br i1 %tmp34, label %then36, label %else39

then27:                                           ; preds = %merge17
  %re28 = load i8*, i8** %re2
  %f29 = load i8*, i8** %f
  %searchQ_result = call i32 @searchQ(i8* %f29, i8* %re28)
  br label %merge26

else30:                                           ; preds = %merge17
  br label %merge26

merge35:                                          ; preds = %else39, %then36
  %re40 = load i8*, i8** %re2
  %find41 = call i8* @strstr(i8* %re40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.40, i32 0, i32 0))
  %null42 = load i8*, i8** %null
  %tmp43 = icmp ne i8* %find41, %null42
  br i1 %tmp43, label %then45, label %else48

then36:                                           ; preds = %merge26
  %re37 = load i8*, i8** %re2
  %f38 = load i8*, i8** %f
  %searchEOR_result = call i32 @searchEOR(i8* %f38, i8* %re37)
  br label %merge35

else39:                                           ; preds = %merge26
  br label %merge35

merge44:                                          ; preds = %else48, %then45
  %re49 = load i8*, i8** %re2
  %find50 = call i8* @strstr(i8* %re49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.41, i32 0, i32 0))
  %null51 = load i8*, i8** %null
  %tmp52 = icmp ne i8* %find50, %null51
  br i1 %tmp52, label %then54, label %else57

then45:                                           ; preds = %merge35
  %re46 = load i8*, i8** %re2
  %f47 = load i8*, i8** %f
  %searchBetween_result = call i32 @searchBetween(i8* %f47, i8* %re46)
  br label %merge44

else48:                                           ; preds = %merge35
  br label %merge44

merge53:                                          ; preds = %else57, %then54
  br label %merge

then54:                                           ; preds = %merge44
  %re55 = load i8*, i8** %re2
  %f56 = load i8*, i8** %f
  %searchKleene_result = call i32 @searchKleene(i8* %f56, i8* %re55)
  br label %merge53

else57:                                           ; preds = %merge44
  br label %merge53

else58:                                           ; preds = %entry
  %re59 = load i8*, i8** %re2
  %f60 = load i8*, i8** %f
  %searchLine_result = call i32 @searchLine(i8* %f60, i8* %re59)
  br label %merge
}

define i32 @main() {
entry:
  %filename = alloca i8*
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @string.44, i32 0, i32 0), i8** %filename
  %puts = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @string.45, i32 0, i32 0))
  %filename1 = load i8*, i8** %filename
  %tape_result = call i32 @tape(i8* %filename1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @string.46, i32 0, i32 0))
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
