#!bin/sh

cd ..
make

tape.natve < hello.tape > hello.ll
lli hello.ll
