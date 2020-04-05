#!/usr/bin/env bats

source bashlets text::filter::fancy

(
  # this has problems inside a @test() block
  bash$$ fancy punch hello world > hello.punch
)

@test "text/filter/fancy: convert text to punched card" {
  result=$(sha1sum hello.punch)
  expected="b4f82641bf6be84534dd84a9ddc08cddcb76aaeb"
  [[ $result =~ $expected ]]
}

@test "text/filter/fancy: convert text to pig latin" {
  result=$(bash$$ fancy to_piglatin hello world)
  expected="ellohay"
  [[ $result =~ $expected ]]
}
