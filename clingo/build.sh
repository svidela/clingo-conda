#!/bin/sh

$PREFIX/bin/scons --build-dir=release

mv build/release/python/gringo.so $PREFIX/lib/python2.7/site-packages
mv build/release/clingo build/release/gringo build/release/reify $PREFIX/bin
