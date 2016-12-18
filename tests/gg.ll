; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [2 x i8] c"a\00"
@string.2 = private unnamed_addr constant [1 x i8] zeroinitializer
@string.3 = private unnamed_addr constant [2 x i8] c"r\00"
@string.4 = private unnamed_addr constant [10 x i8] c"test2.txt\00"

define i32 @main() {
entry:
  %filea = alloca i8*
  %array = alloca i8*
  %null = alloca i8*
  %i = alloca i32
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %find, i8** %null
  %tmpa = call i8* @calloc(i32 10000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %array
  %fopen = call i8* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @string.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.3, i32 0, i32 0))
  store i8* %fopen, i8** %filea
  br label %while

while:                                            ; preds = %while_body, %entry
  %filea2 = load i8*, i8** %filea
  %array3 = load i8*, i8** %array
  %tmpz = call i8* @fgets(i8* %array3, i32 1000, i8* %filea2)
  %null4 = load i8*, i8** %null
  %tmp = icmp ne i8* %tmpz, %null4
  br i1 %tmp, label %while_body, label %merge

while_body:                                       ; preds = %while
  %array1 = load i8*, i8** %array
  %puts = call i8* (i8*, ...) @puts(i8* %array1)
  br label %while

merge:                                            ; preds = %while
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
