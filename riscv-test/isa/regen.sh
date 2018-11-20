# !/bin/bash

cd ./generated
rm *

make -f ../Makefile src_dir=../  XLEN=32
