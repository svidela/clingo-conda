#!/bin/sh
export ftp_proxy=http://proxy.leloir.org.ar:3128
export http_proxy=http://proxy.leloir.org.ar:3128
export https_proxy=http://proxy.leloir.org.ar:3128

wget ftp://prep.ai.mit.edu/pub/gnu/bison/bison-3.0.4.tar.gz
tar zxfv bison-3.0.4.tar.gz
cd bison-3.0.4
./configure --prefix="$PREFIX"
make
make install
cd ..

wget https://github.com/skvadrik/re2c/releases/download/0.16/re2c-0.16.tar.gz
tar zxfv re2c-0.16.tar.gz
cd re2c-0.16
./configure --prefix="$PREFIX"
make
make install
cd ..

scons --build-dir=release
mv build/release/python/gringo.so $PREFIX/lib/python2.7/site-packages

