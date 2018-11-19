# !/usr/bin/bash

fesvr_build_dir=${PWD}/riscv-fesvr/build
isasim_build_dir=${PWD}/riscv-isa-sim/build

if [ -d ${fesvr_build_dir} ]; then
	rm ${fesvr_build_dir}/*
fi


if [ -d ${isasim_build_dir} ]; then
	rm ${isasim_build_dir}/*
fi
