#!/bin/sh
# Drinkcoin Build Script
# For Linux and macOS

set -e
set -x

rm -rf build
mkdir -p build/release
cd build/release
cmake -D STATIC=ON -D ARCH="default" -D CMAKE_BUILD_TYPE=Release ../..
PORTABLE=1 make ${COMPILE_ARGS}
