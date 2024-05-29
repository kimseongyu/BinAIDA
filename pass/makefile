CC = clang
CXX = clang++
LIFTER = ~/retdec-install/bin/retdec-decompiler
LLVM_CONFIG = llvm-config

CFLAGS += `$(LLVM_CONFIG) --cppflags --ldflags`
LDFLAGS += `$(LLVM_CONFIG) --system-libs --libs all`

TYPENAME = Mask
FILENAME = default.ll

.PHONY: all build compile pass clean

all: build compile pass

compile:
	$(CC) test.c -o test
	$(CC) -emit-llvm -S test.c -o test.ll
	$(LIFTER) test -o lift.c
	sed -i '/uselistorder/d' lift.ll

pass:
	opt -load-pass-plugin ./build/transform/TransformPass.so -passes="getInfo($(TYPENAME),$(FILENAME))" lift.ll

build:
	mkdir -p build
	cmake -B build
	make -C build

clean:
	rm -rf build