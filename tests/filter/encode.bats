#!/usr/bin/env bats

source bashlets text::filter::encode

@test "text/filter/encode: encode text in base64" {
  result="$(bash$$ encode base64 hello world)"
  expected="aGVsbG8gd29ybGQ="  # echo -n 'hello world' | base64
  [[ $result == $expected ]]
}

@test "text/filter/encode: url-encode text" {
  result="$(bash$$ encode urlencode 'hello world')"
  expected="hello%20world"
  [[ $result == $expected ]]
}
