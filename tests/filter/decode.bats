#!/usr/bin/env bats

source bashlets text::filter::decode

@test "text/filter/decode: url-decode text" {
  result="$(bash$$ decode urldecode 'hello%20world')"
  expected="hello world"
  [[ $result == $expected ]]
}
