; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [2 x i8] c"a\00"
@string.2 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.4 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.5 = private unnamed_addr constant [6 x i8] c"_func\00"
@string.6 = private unnamed_addr constant [2 x i8] c"r\00"
@string.7 = private unnamed_addr constant [11 x i8] c"codegen.ml\00"

define i32 @searchLine(i8* %a, i8* %f) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %f2 = alloca i8*
  store i8* %f, i8** %f2
  %temp = alloca i8*
  %null = alloca i8*
  %tmpa = call i8* @calloc(i32 1000000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %find, i8** %null
  br label %while

while:                                            ; preds = %merge, %entry
  %f8 = load i8*, i8** %f2
  %temp9 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp9, i32 1000, i8* %f8)
  %null10 = load i8*, i8** %null
  %tmp11 = icmp ne i8* %tmpz, %null10
  br i1 %tmp11, label %while_body, label %merge12

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
  br label %merge

else:                                             ; preds = %while_body
  br label %merge

merge12:                                          ; preds = %while
  ret i32 1
}

define i32 @main() {
entry:
  %target = alloca i8*
  %handle = alloca i8*
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @string.5, i32 0, i32 0), i8** %handle
  %fopen = call i8* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @string.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.6, i32 0, i32 0))
  store i8* %fopen, i8** %target
  %target1 = load i8*, i8** %target
  %puts = call i8* (i8*, ...) @puts(i8* %target1)
  %target2 = load i8*, i8** %target
  %handle3 = load i8*, i8** %handle
  %searchLine_result = call i32 @searchLine(i8* %handle3, i8* %target2)
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
