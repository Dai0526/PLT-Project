#!bin/sh

echo Start to make...
make


echo translate to machine code
./tape.native < ./tests/helloworld.tape > helloworld.ll


echo
echo
echo
echo The out put is:
lli helloworld.ll
lli helloworld.ll > ./output-hello.txt 2>&1
echo
echo
echo
echo

echo clean the file
make clean
rm helloworld.ll




