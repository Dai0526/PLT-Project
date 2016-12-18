; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.3 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [11 x i8] c"i LoVe Plt\00"

define i8* @str2Lower(i8* %a) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %temp = alloca i8*
  %tempup = alloca i8*
  %target = alloca i8*
  %i = alloca i32
  %ans = alloca i8*
  %c = alloca i8
  %l = alloca i32
  %a2 = load i8*, i8** %a1
  %len = call i32 @strlen(i8* %a2)
  store i32 %len, i32* %l
  %l3 = load i32, i32* %l
  %tmpa = call i8* @calloc(i32 %l3, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %target
  %a4 = load i8*, i8** %a1
  store i8* %a4, i8** %target
  %tmpa5 = call i8* @calloc(i32 1, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa5, i8** %temp
  %tmpa6 = call i8* @calloc(i32 1, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa6, i8** %tempup
  store i32 0, i32* %i
  %l7 = load i32, i32* %l
  %tmpa8 = call i8* @calloc(i32 %l7, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa8, i8** %ans
  br label %while

while:                                            ; preds = %while_body, %entry
  %i25 = load i32, i32* %i
  %l26 = load i32, i32* %l
  %tmp27 = icmp slt i32 %i25, %l26
  br i1 %tmp27, label %while_body, label %merge

while_body:                                       ; preds = %while
  %temp9 = load i8*, i8** %temp
  %target10 = load i8*, i8** %target
  %i11 = load i32, i32* %i
  %tmpp = getelementptr inbounds i8, i8* %target10, i32 %i11
  %deref = load i8, i8* %tmpp
  %tmpp12 = getelementptr inbounds i8, i8* %temp9, i32 0
  store i8 %deref, i8* %tmpp12
  %tempup13 = load i8*, i8** %tempup
  %temp14 = load i8*, i8** %temp
  %tmpp15 = getelementptr inbounds i8, i8* %temp14, i32 0
  %deref16 = load i8, i8* %tmpp15
  %tolower = call i8 @tolower(i8 %deref16)
  %tmpp17 = getelementptr inbounds i8, i8* %tempup13, i32 0
  store i8 %tolower, i8* %tmpp17
  %ans18 = load i8*, i8** %ans
  %i19 = load i32, i32* %i
  %tempup20 = load i8*, i8** %tempup
  %tmpp21 = getelementptr inbounds i8, i8* %tempup20, i32 0
  %deref22 = load i8, i8* %tmpp21
  %tmpp23 = getelementptr inbounds i8, i8* %ans18, i32 %i19
  store i8 %deref22, i8* %tmpp23
  %i24 = load i32, i32* %i
  %tmp = add i32 %i24, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  %ans28 = load i8*, i8** %ans
  ret i8* %ans28
}

define i8* @str2Upper(i8* %a) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %temp = alloca i8*
  %tempup = alloca i8*
  %target = alloca i8*
  %i = alloca i32
  %ans = alloca i8*
  %c = alloca i8
  %l = alloca i32
  %a2 = load i8*, i8** %a1
  %len = call i32 @strlen(i8* %a2)
  store i32 %len, i32* %l
  %l3 = load i32, i32* %l
  %tmpa = call i8* @calloc(i32 %l3, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %target
  %a4 = load i8*, i8** %a1
  store i8* %a4, i8** %target
  %tmpa5 = call i8* @calloc(i32 1, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa5, i8** %temp
  %tmpa6 = call i8* @calloc(i32 1, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa6, i8** %tempup
  store i32 0, i32* %i
  %l7 = load i32, i32* %l
  %tmpa8 = call i8* @calloc(i32 %l7, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa8, i8** %ans
  br label %while

while:                                            ; preds = %while_body, %entry
  %i25 = load i32, i32* %i
  %l26 = load i32, i32* %l
  %tmp27 = icmp slt i32 %i25, %l26
  br i1 %tmp27, label %while_body, label %merge

while_body:                                       ; preds = %while
  %temp9 = load i8*, i8** %temp
  %target10 = load i8*, i8** %target
  %i11 = load i32, i32* %i
  %tmpp = getelementptr inbounds i8, i8* %target10, i32 %i11
  %deref = load i8, i8* %tmpp
  %tmpp12 = getelementptr inbounds i8, i8* %temp9, i32 0
  store i8 %deref, i8* %tmpp12
  %tempup13 = load i8*, i8** %tempup
  %temp14 = load i8*, i8** %temp
  %tmpp15 = getelementptr inbounds i8, i8* %temp14, i32 0
  %deref16 = load i8, i8* %tmpp15
  %toupper = call i8 @toupper(i8 %deref16)
  %tmpp17 = getelementptr inbounds i8, i8* %tempup13, i32 0
  store i8 %toupper, i8* %tmpp17
  %ans18 = load i8*, i8** %ans
  %i19 = load i32, i32* %i
  %tempup20 = load i8*, i8** %tempup
  %tmpp21 = getelementptr inbounds i8, i8* %tempup20, i32 0
  %deref22 = load i8, i8* %tmpp21
  %tmpp23 = getelementptr inbounds i8, i8* %ans18, i32 %i19
  store i8 %deref22, i8* %tmpp23
  %i24 = load i32, i32* %i
  %tmp = add i32 %i24, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  %ans28 = load i8*, i8** %ans
  ret i8* %ans28
}

define i32 @main() {
entry:
  %target = alloca i8*
  %ans = alloca i8*
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @string, i32 0, i32 0), i8** %target
  %target1 = load i8*, i8** %target
  %str2Upper_result = call i8* @str2Upper(i8* %target1)
  store i8* %str2Upper_result, i8** %ans
  %ans2 = load i8*, i8** %ans
  %puts = call i8* (i8*, ...) @puts(i8* %ans2)
  %target3 = load i8*, i8** %target
  %str2Lower_result = call i8* @str2Lower(i8* %target3)
  store i8* %str2Lower_result, i8** %ans
  %ans4 = load i8*, i8** %ans
  %puts5 = call i8* (i8*, ...) @puts(i8* %ans4)
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
