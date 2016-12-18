; ModuleID = 'tape'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string = private unnamed_addr constant [2 x i8] c"r\00"
@string.2 = private unnamed_addr constant [2 x i8] c"w\00"
@string.3 = private unnamed_addr constant [2 x i8] c"a\00"
@string.4 = private unnamed_addr constant [1 x i8] zeroinitializer
@string.5 = private unnamed_addr constant [13 x i8] c"I am in here\00"
@string.6 = private unnamed_addr constant [22 x i8] c"I am in the else case\00"
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.8 = private unnamed_addr constant [4 x i8] c"%c\0A\00"
@string.9 = private unnamed_addr constant [6 x i8] c"apple\00"
@string.10 = private unnamed_addr constant [7 x i8] c"orange\00"
@string.11 = private unnamed_addr constant [20 x i8] c"destinationFile.txt\00"
@string.12 = private unnamed_addr constant [17 x i8] c"originalFile.txt\00"

define i32 @findreplace(i8* %a, i8* %b, i8* %orig, i8* %dest) {
entry:
  %a1 = alloca i8*
  store i8* %a, i8** %a1
  %b2 = alloca i8*
  store i8* %b, i8** %b2
  %orig3 = alloca i8*
  store i8* %orig, i8** %orig3
  %dest4 = alloca i8*
  store i8* %dest, i8** %dest4
  %temp = alloca i8*
  %newword = alloca i8*
  %null = alloca i8*
  %la = alloca i32
  %lb = alloca i32
  %origfile = alloca i8*
  %destfile = alloca i8*
  %len1 = alloca i32
  %len2 = alloca i32
  %line = alloca i8*
  %orig5 = load i8*, i8** %orig3
  %fopen = call i8* @fopen(i8* %orig5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string, i32 0, i32 0))
  store i8* %fopen, i8** %origfile
  %dest6 = load i8*, i8** %dest4
  %fopen7 = call i8* @fopen(i8* %dest6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.2, i32 0, i32 0))
  store i8* %fopen7, i8** %destfile
  %a8 = load i8*, i8** %a1
  %len = call i32 @strlen(i8* %a8)
  store i32 %len, i32* %la
  %b9 = load i8*, i8** %b2
  %len10 = call i32 @strlen(i8* %b9)
  store i32 %len10, i32* %lb
  %tmpa = call i8* @calloc(i32 100000, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  store i8* %tmpa, i8** %temp
  %find = call i8* @strstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @string.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @string.3, i32 0, i32 0))
  store i8* %find, i8** %null
  %la11 = load i32, i32* %la
  %lb12 = load i32, i32* %lb
  %tmp = icmp eq i32 %la11, %lb12
  br i1 %tmp, label %then, label %else25

merge:                                            ; preds = %merge47, %merge24
  ret i32 1

then:                                             ; preds = %entry
  br label %while

while:                                            ; preds = %merge18, %then
  %origfile20 = load i8*, i8** %origfile
  %temp21 = load i8*, i8** %temp
  %tmpz = call i8* @fgets(i8* %temp21, i32 1000, i8* %origfile20)
  %null22 = load i8*, i8** %null
  %tmp23 = icmp ne i8* %tmpz, %null22
  br i1 %tmp23, label %while_body, label %merge24

while_body:                                       ; preds = %while
  %a13 = load i8*, i8** %a1
  %temp14 = load i8*, i8** %temp
  %find15 = call i8* @strstr(i8* %temp14, i8* %a13)
  %null16 = load i8*, i8** %null
  %tmp17 = icmp ne i8* %find15, %null16
  br i1 %tmp17, label %then19, label %else

merge18:                                          ; preds = %else, %then19
  br label %while

then19:                                           ; preds = %while_body
  %puts = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @string.5, i32 0, i32 0))
  br label %merge18

else:                                             ; preds = %while_body
  br label %merge18

merge24:                                          ; preds = %while
  br label %merge

else25:                                           ; preds = %entry
  %origfile26 = load i8*, i8** %origfile
  %temp27 = load i8*, i8** %temp
  %tmpz28 = call i8* @fgets(i8* %temp27, i32 1000, i8* %origfile26)
  store i8* %tmpz28, i8** %line
  %puts29 = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @string.6, i32 0, i32 0))
  br label %while30

while30:                                          ; preds = %while_body31, %else25
  %line40 = load i8*, i8** %line
  %null41 = load i8*, i8** %null
  %tmp42 = icmp ne i8* %line40, %null41
  br i1 %tmp42, label %while_body31, label %merge43

while_body31:                                     ; preds = %while30
  %line32 = load i8*, i8** %line
  %len33 = call i32 @strlen(i8* %line32)
  store i32 %len33, i32* %len1
  %destfile34 = load i8*, i8** %destfile
  %len135 = load i32, i32* %len1
  %temp36 = load i8*, i8** %temp
  %tmpy = call i32 @fwrite(i8* %temp36, i32 1, i32 %len135, i8* %destfile34)
  %origfile37 = load i8*, i8** %origfile
  %temp38 = load i8*, i8** %temp
  %tmpz39 = call i8* @fgets(i8* %temp38, i32 1000, i8* %origfile37)
  store i8* %tmpz39, i8** %line
  br label %while30

merge43:                                          ; preds = %while30
  %la44 = load i32, i32* %la
  %lb45 = load i32, i32* %lb
  %tmp46 = icmp sgt i32 %la44, %lb45
  br i1 %tmp46, label %then48, label %else49

merge47:                                          ; preds = %else49, %then48
  br label %merge

then48:                                           ; preds = %merge43
  br label %merge47

else49:                                           ; preds = %merge43
  br label %merge47
}

define i32 @main() {
entry:
  %handle = alloca i8*
  %newword = alloca i8*
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @string.9, i32 0, i32 0), i8** %handle
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @string.10, i32 0, i32 0), i8** %newword
  %newword1 = load i8*, i8** %newword
  %handle2 = load i8*, i8** %handle
  %findreplace_result = call i32 @findreplace(i8* %handle2, i8* %newword1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @string.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @string.11, i32 0, i32 0))
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
