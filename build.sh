#!/usr/bin/env bash

set -e

# ./mill clean
./mill __.compile
./mill __.checkFormat
./mill -j2 __.fix --check
./mill -j2 __.fastLinkJS
./mill -j2 __.fastLinkJSTest
./mill __.test
./mill __.publishLocal

# Will return when sbt 2.0 supports Scala.js

# SBT Indigo
# echo ">>> SBT-Indigo"
# cd sbt-indigo
# bash build.sh
# cd ..
