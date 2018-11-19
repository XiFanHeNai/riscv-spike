# !/usr/bin/bash

fesvr_build_dir=${PWD}/riscv-fesvr/build
isasim_build_dir=${PWD}/riscv-isa-sim/build

if [ -d ${fesvr_build_dir} ]; then
	cd ${fesvr_build_dir}
	../configure --prefix=${SPIKE_HOME}
	make install
fi


if [ -d ${isasim_build_dir} ]; then
	cd ${isasim_build_dir}
	../configure --prefix=${SPIKE_HOME} --with-fesvr=${SPIKE_HOME}
	make
	make install
fi


#${isasim_build_dir}
#	cd ${fesvr_build_dir}
#	echo ${fesvr_build_dir} 
#	../configure --prefix=${SPIKE_HOME}
#	make install
#	cd ${isasim_build_dir}
#	sh ../configure --prefix=${SPIKE_HOME} --with-fesvr=${SPIKE_HOME}
#	make
#	make install
