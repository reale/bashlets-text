#!/usr/bin/env bats

source bashlets text::filter::obfuscate

@test "text/filter/obfuscate: rot13 text" {
  text="hello world"
  text1=$(bash$$ obfuscate rot13 $text)
  text2=$(bash$$ obfuscate rot13 $text1)
  [[ $text == $text2 ]]
}
