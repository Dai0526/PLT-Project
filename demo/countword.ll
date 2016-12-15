; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [2 x i8] c"a\00"
@string.2 = private unnamed_addr constant [1 x i8] zeroinitializer
@string.3 = private unnamed_addr constant [29 x i8] c"total number of apples eaten\00"
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.6 = private unnamed_addr constant [6 x i8] c"apple\00"
@string.7 = private unnamed_addr constant [2 x i8] c"r\00"
@string.8 = private unnamed_addr constant [17 x i8] c"originalFile.txt\00"

define i32 @countWord(i8* %a, i8* %f) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %f2 = alloca i8*
  store i8* %f, i8** %f2
  %temp = alloca i8*
  %null = alloca i8*
  %intcount = alloca i32
  store i32 0, i32* %intcount
  %tmpa = call i8* @calloc(i32 1000000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %find, i8** %null
  br label %while

while:                                            ; preds = %merge, %entry
  %f10 = load i8*, i8** %f2
  %temp11 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp11, i32 1000, i8* %f10)
  %null12 = load i8*, i8** %null
  %tmp13 = icmp ne i8* %tmpz, %null12
  br i1 %tmp13, label %while_body, label %merge14

while_body:                                       ; preds = %while
  %a3 = load i8*, i8** %a1
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
  %intcount8 = load i32, i32* %intcount
  %tmp9 = add i32 %intcount8, 1
  store i32 %tmp9, i32* %intcount
  br label %merge

else:                                             ; preds = %while_body
  br label %merge

merge14:                                          ; preds = %while
  %puts15 = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @string.3, i32 0, i32 0))
  %intcount16 = load i32, i32* %intcount
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %intcount16)
  ret i32 1
}

define i32 @main() {
entry:
  %target = alloca i8*
  %handle = alloca i8*
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @string.6, i32 0, i32 0), i8** %handle
  %fopen = call i8* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @string.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.7, i32 0, i32 0))
  store i8* %fopen, i8** %target
  %target1 = load i8*, i8** %target
  %handle2 = load i8*, i8** %handle
  %countWord_result = call i32 @countWord(i8* %handle2, i8* %target1)
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
