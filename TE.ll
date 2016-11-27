; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"

define i32 @main() {
entry:
  %t = alloca i32
  %w = alloca i32
  store i32 97, i32* %t
  %t1 = load i32, i32* %t
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %t1)
  %t2 = load i32, i32* %t
  %toupper = call i32 @toupper(i32 %t2)
  store i32 %toupper, i32* %w
  %w3 = load i32, i32* %w
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %w3)
  ret i32 0
}

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i8* @fopen(i8*)

declare i32 @fclose(i32)

declare i32 @fputs(i32, i8*)

declare i32 @fgets(i8*, i32, i8*)

declare i32 @toupper(i32)

declare i32 @tolower(i32)
