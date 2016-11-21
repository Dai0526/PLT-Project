#!bin/sh
./microc.native < ./tests/test-while1.mc > test.ll

lli test.ll


