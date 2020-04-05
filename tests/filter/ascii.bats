#!/usr/bin/env bats

source bashlets text::filter::ascii

@test "text/filter/ascii: convert text to binary" {
  result=$(bash$$ ascii to_bin a)
  expected="01100001"
  [[ $result == $expected ]]
}

@test "text/filter/ascii: convert text to decimal" {
  result=$(bash$$ ascii to_dec a)
  expected="97"
  [[ $result == $expected ]]
}

@test "text/filter/ascii: calculate sum of decimal ascii values" {
  result=$(bash$$ ascii get_sum a)
  expected="97"
  [[ $result == $expected ]]
}
