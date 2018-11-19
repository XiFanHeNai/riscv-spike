fesvr_build_dir   := ${PWD}/riscv-fesvr/build
isasim_build_dir  := ${PWD}/riscv-isa-sim/build


build: ${fesvr_build_dir}  ${isasim_build_dir}
	sh build.sh

clean:${fesvr_build_dir}  ${isasim_build_dir}
	sh clean.sh

