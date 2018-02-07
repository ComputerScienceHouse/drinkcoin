#!/bin/sh
# Drinkcoin Package Script
# For Linux and macOS

set -e
set -x

mkdir -p build/packages
cd build/release/src
tar -czvf ../../packages/drinkcoin-${TRAVIS_TAG}-${TRAVIS_OS_NAME}.tar.gz drinkcoind simplewallet walletd miner connectivity_tool
