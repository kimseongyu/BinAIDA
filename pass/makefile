CC = clang
CXX = clang++
LLVM_CONFIG = llvm-config

CFLAGS += `$(LLVM_CONFIG) --cppflags --ldflags`
LDFLAGS += `$(LLVM_CONFIG) --system-libs --libs all`

.PHONY: all build pass clean

all: build pass

pass:
	opt -load-pass-plugin ./build/transform/TransformPass.so -passes=getInfo lift.ll -o trans_lift.ll

build:
	mkdir -p build
	cmake -B build
	make -C build

clean:
	rm -rf build