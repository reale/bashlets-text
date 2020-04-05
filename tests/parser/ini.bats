#!/usr/bin/env bats

source bashlets text::parser::ini

@test "text/parser/ini: parse a INI fragment" {
  result=$(bash$$ ini get sample.ini foo)
  expected="bar"
  [[ $result =~ $expected ]]
}
