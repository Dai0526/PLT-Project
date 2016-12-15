; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.3 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [20 x i8] c"I love plt project!\00"

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

define i32 @main() {
entry:
  %subtarget = alloca i8*
  %target = alloca i8*
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @string, i32 0, i32 0), i8** %target
  %target1 = load i8*, i8** %target
  %substring_result = call i8* @substring(i32 2, i32 5, i8* %target1)
  store i8* %substring_result, i8** %subtarget
  %subtarget2 = load i8*, i8** %subtarget
  %puts = call i8* (i8*, ...) @puts(i8* %subtarget2)
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
