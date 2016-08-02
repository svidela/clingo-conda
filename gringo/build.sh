#!/bin/sh

scons --build-dir=release
mv build/release/python/gringo.so $PREFIX/lib/python2.7/site-packages
