git clone https://github.com/tmux/tmux.git
cd tmux; ./autogen.sh
mkdir build; cd build
export LLVM_COMPILER_PATH=/usr/lib/llvm-5.0/bin
export LLVM_COMPILER=clang
../configure CC=/usr/local/bin/wllvm CXX=/usr/local/bin/wllvm++ 
make -j32
for i in $(find . -executable -and -type f) ; do echo $i ; extract-bc $i ; done
