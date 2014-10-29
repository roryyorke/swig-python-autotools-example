#!/bin/bash

## Run autotools, configure, make, install and run Python SWIG module

set -e

INSTALLROOT=$PWD/install-root

# remove previous build and install artefacts
rm -rf build $INSTALLROOT

# from https://issues.mediagoblin.org/ticket/755
# To solve "possibly undefined macro: AC_MSG_ERROR" error
aclocal -I m4 --install
# generate configure, Makefile.in, etc.
./autogen.sh
mkdir build
cd build
# out-of-tree configure and build
../configure --prefix=$INSTALLROOT
make
make install

cd ..
# exact destination depends on python version
# this is a hack; the idea is to get wherever "example.py" and "_example.so" are
# onto PYTHONPATH
export PYTHONPATH=$(dirname $(find $INSTALLROOT -name example.py -print))
python -c 'import example; example.example_hello()'
