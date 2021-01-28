#!/bin/bash
# Copyright 2016 Google Inc. All Rights Reserved.
# Licensed under the Apache License, Version 2.0 (the "License");

set -x
set -e
set -o pipefail

cd openssl && CC="clang -g -fsanitize=address,fuzzer-no-link" ./config && make clean && make
cd ..
clang++ -g ./target.cc -fsanitize=address,fuzzer openssl/libssl.a  openssl/libcrypto.a -std=c++17 -I openssl/include -lstdc++fs -ldl -lstdc++ -o ./target

