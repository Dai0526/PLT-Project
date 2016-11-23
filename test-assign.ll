; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@string = private unnamed_addr constant [11 x i8] c"hello tape\00"
@string.1 = private unnamed_addr constant [7 x i8] c"change\00"

define i32 @main() {
entry:
  %a = alloca i32
  %s = alloca i8*
  store i32 4119, i32* %a
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @string, i32 0, i32 0), i8** %s
  %s1 = load i8*, i8** %s
  %puts = call i8* (i8*, ...) @puts(i8* %s1)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @string.1, i32 0, i32 0), i8** %s
  %a2 = load i32, i32* %a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a2)
  %s3 = load i8*, i8** %s
  %puts4 = call i8* (i8*, ...) @puts(i8* %s3)
  ret i32 0
}

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i8* @fopen(i8*)

declare i32 @fclose(i32)

declare i32 @fputs(i32, i8*)

declare i32 @fgets(i8*, i32, i8*)
