#!/usr/bin/env bash
# filename: sample_test.sh

# テストされる側の関数
function sample() {
  echo "Hello World"
}

# テスト関数
testSample() {
  output=`sample`
  assertEquals "${output}" "Hello World"
}

# shUnit2 は最後に読み込んであげる必要がある
. ./shunit2