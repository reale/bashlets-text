# bashlets-text

Text utilities package for the [bashlets](https://github.com/reale/bashlets) project.

Specifically, this package contains the following modules:

* `bashlets.text.filter`: A collection of text filters
* `bashlets.text.parser`: Text parsers for Bashlets

## Installing

First install the bashlets [core distribution](https://github.com/reale/bashlets).

Then it is enough to do:

	$ bashlets-install text

## Examples

### Convert ASCII to bin

    $ source bashlets text::filter::ascii
    $ bash$$ ascii to_bin hello

    0110100001100101011011000110110001101111

### Convert text to punched cards

    $ source bashlets text::filter::fancy
    $ bash$$ text::filter::fancy::punch hello
     _________________________________________________
    /HELLO                                           |
    |]]                                              |
    |  ]]]                                           |
    |                                                |
    |111111111111111111111111111111111111111111111111|
    |222222222222222222222222222222222222222222222222|
    |33]]33333333333333333333333333333333333333333333|
    |444444444444444444444444444444444444444444444444|
    |5]5555555555555555555555555555555555555555555555|
    |6666]6666666666666666666666666666666666666666666|
    |777777777777777777777777777777777777777777777777|
    |]88888888888888888888888888888888888888888888888|
    |999999999999999999999999999999999999999999999999|
    _________________________________________________|
