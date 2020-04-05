#!/usr/bin/env bats

source bashlets text::parser::yaml

@test "text/parser/yaml: parse a YAML fragment" {
  result=$(bash$$ yaml get sample.yml User)
  expected="ed"
  [[ $result == $expected ]]
}
