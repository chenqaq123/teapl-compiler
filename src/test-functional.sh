#!/bin/bash
testcase_dir=$2
test_name=$1

func_testcase_dir=$(realpath $(dirname "$0")/./${testcase_dir})

test_single() {
	test_file=`realpath --relative-base=$func_testcase_dir $func_testcase_dir/$1.tea`	
	test_name=${test_file%.tea}
	
	echo -n $test_name
	echo ": "

	./compiler $func_testcase_dir/$test_name.tea
	if [ $? != 0 ]; then
		echo fail compiler; exit -1
	fi

	# 编译和测试 AArch64（ARM64）架构的汇编程序的脚本
	# 1. 使用 aarch64-linux-gnu-gcc 编译器将汇编文件（.S文件）编译成目标文件（.o文件）
	aarch64-linux-gnu-gcc -g -c $func_testcase_dir/$test_name.S -o output/$test_name.o
	# 2. 将生成的目标文件与 sylib/sylib.o 链接，生成可执行文件并放到 output 目录下
    aarch64-linux-gnu-gcc -g output/$test_name.o sylib/sylib.o -o output/$test_name
	if [ $? != 0 ]; then
		echo "fail to compile"; exit -1
	fi
	# 3. 使用 qemu-aarch64 模拟器运行生成的可执行文件
	ARCH=$(uname -m)
	if [ -f $func_testcase_dir/$test_name.in ]; then
		qemu-aarch64 ./output/$test_name < $func_testcase_dir/$test_name.in > output/$test_name.out
	else
		qemu-aarch64 ./output/$test_name > output/$test_name.out
	fi
	echo -e $? >> ./output/$test_name.out
	# 4. 使用 diff 命令比较程序的实际输出和预期输出
	diff -Bb ./output/$test_name.out $func_testcase_dir/$test_name.out > /dev/null 2>/dev/null
	if [ $? == 0 ]; then
        echo pass; 
	else
		echo fail;\
		echo "Expect:";\
		cat $func_testcase_dir/$test_name.out;\
		echo "Got:";\
		cat ./output/$test_name.out;\
		exit -1
	fi
}

main() {
	test_single $1
}

main $@
