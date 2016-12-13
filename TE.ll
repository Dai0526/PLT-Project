; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [3 x i8] c"32\00"
@string.2 = private unnamed_addr constant [2 x i8] c"a\00"
@string.3 = private unnamed_addr constant [1 x i8] zeroinitializer
@string.4 = private unnamed_addr constant [16 x i8] c"abcdefg&hijklmn\00"
@string.5 = private unnamed_addr constant [7 x i8] c"123456\00"
@string.6 = private unnamed_addr constant [2 x i8] c"r\00"
@string.7 = private unnamed_addr constant [11 x i8] c"codegen.ml\00"

define i32 @main() {
entry:
  %Array = alloca i8*
  %Array2 = alloca i8*
  %handle = alloca i8*
  %null = alloca i8*
  %ans = alloca i8*
  %line = alloca i8*
  %temp2 = alloca i8*
  %arraytemp = alloca i8*
  %arraytemp2 = alloca i8*
  %arraytemp3 = alloca i8*
  %i = alloca i32
  %j = alloca i32
  %arryhandlea = alloca i8*
  %arryhandleb = alloca i8*
  %diff = alloca i8*
  %testa = alloca i32
  %testb = alloca i8*
  %testc = alloca i8
  %arry = alloca i8*
  %temp = alloca i8*
  %filea = alloca i8*
  %fileb = alloca i8*
  %filec = alloca i8*
  %tmpa = call i8* @calloc(i32 1, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @string, i32 0, i32 0), i8** %handle
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.2, i32 0, i32 0))
  store i8* %find, i8** %null
  store i32 0, i32* %i
  store i32 0, i32* %j
  %tmpa1 = call i8* @calloc(i32 20, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa1, i8** %arraytemp
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @string.4, i32 0, i32 0), i8** %arraytemp
  %tmpa2 = call i8* @calloc(i32 30, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa2, i8** %arryhandlea
  %tmpa3 = call i8* @calloc(i32 30, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa3, i8** %arryhandleb
  %tmpa4 = call i8* @calloc(i32 20, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa4, i8** %arraytemp3
  %tmpa5 = call i8* @calloc(i32 1, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa5, i8** %arry
  %arry6 = load i8*, i8** %arry
  %arraytemp7 = load i8*, i8** %arraytemp
  %tmpp = getelementptr inbounds i8, i8* %arraytemp7, i32 5
  %deref = load i8, i8* %tmpp
  %tmpp8 = getelementptr inbounds i8, i8* %arry6, i32 0
  store i8 %deref, i8* %tmpp8
  %temp9 = load i8*, i8** %temp
  %arry10 = load i8*, i8** %arry
  %tmpp11 = getelementptr inbounds i8, i8* %arry10, i32 0
  %deref12 = load i8, i8* %tmpp11
  %toupper = call i8 @toupper(i8 %deref12)
  %tmpp13 = getelementptr inbounds i8, i8* %temp9, i32 0
  store i8 %toupper, i8* %tmpp13
  %temp14 = load i8*, i8** %temp
  %puts = call i8* (i8*, ...) @puts(i8* %temp14)
  %tmpa15 = call i8* @calloc(i32 20, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa15, i8** %arraytemp2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @string.5, i32 0, i32 0), i8** %arraytemp3
  %arraytemp16 = load i8*, i8** %arraytemp
  store i8* %arraytemp16, i8** %arraytemp2
  br label %while

while:                                            ; preds = %merge, %entry
  %i25 = load i32, i32* %i
  %tmp26 = icmp slt i32 %i25, 30
  br i1 %tmp26, label %while_body, label %merge27

while_body:                                       ; preds = %while
  %arraytemp17 = load i8*, i8** %arraytemp
  %i18 = load i32, i32* %i
  %tmpp19 = getelementptr inbounds i8, i8* %arraytemp17, i32 %i18
  %deref20 = load i8, i8* %tmpp19
  %tmp = icmp eq i8 %deref20, 38
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else, %then
  %i23 = load i32, i32* %i
  %tmp24 = add i32 %i23, 1
  store i32 %tmp24, i32* %i
  br label %while

then:                                             ; preds = %while_body
  %i21 = load i32, i32* %i
  store i32 %i21, i32* %j
  %j22 = load i32, i32* %j
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %j22)
  br label %merge

else:                                             ; preds = %while_body
  br label %merge

merge27:                                          ; preds = %while
  %j28 = load i32, i32* %j
  %arraytemp29 = load i8*, i8** %arraytemp
  %arryhandlea30 = load i8*, i8** %arryhandlea
  %mcpy = call i8* @memcpy(i8* %arryhandlea30, i8* %arraytemp29, i32 %j28)
  %tmpa31 = call i8* @calloc(i32 1000000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa31, i8** %Array
  %fopen = call i8* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @string.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.6, i32 0, i32 0))
  store i8* %fopen, i8** %filea
  br label %while32

while32:                                          ; preds = %merge39, %merge27
  %filea44 = load i8*, i8** %filea
  %Array45 = load i8*, i8** %Array
  %tmpz = call i8* @fgets(i8* %Array45, i32 10000, i8* %filea44)
  %null46 = load i8*, i8** %null
  %tmp47 = icmp ne i8* %tmpz, %null46
  br i1 %tmp47, label %while_body33, label %merge48

while_body33:                                     ; preds = %while32
  %handle34 = load i8*, i8** %handle
  %Array35 = load i8*, i8** %Array
  %find36 = call i8* @strstr(i8* %Array35, i8* %handle34)
  %null37 = load i8*, i8** %null
  %tmp38 = icmp ne i8* %find36, %null37
  br i1 %tmp38, label %then40, label %else43

merge39:                                          ; preds = %else43, %then40
  br label %while32

then40:                                           ; preds = %while_body33
  %Array41 = load i8*, i8** %Array
  %puts42 = call i8* (i8*, ...) @puts(i8* %Array41)
  br label %merge39

else43:                                           ; preds = %while_body33
  br label %merge39

merge48:                                          ; preds = %while32
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
