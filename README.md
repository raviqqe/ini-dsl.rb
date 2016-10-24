# ini-dsl.rb

[![Build Status](https://travis-ci.org/raviqqe/ini-dsl.rb.svg?branch=master)](https://travis-ci.org/raviqqe/ini-dsl.rb)
[![License](https://img.shields.io/badge/license-unlicense-lightgray.svg)](https://unlicense.org)

.ini file DSL and generator in Ruby

## Installation

```
$ gem install ini-dsl
```

## Usage

Code:

```ruby
require 'ini-dsl'

config = ini_dsl do
  server do
    ip '123.45.67.89'
    port 80
  end

  security do
    password 'foobarbaz'
  end
end

puts config
```

Output:

```
[server]
ip = 123.45.67.89
port = 80
[security]
password = foobarbaz
```

For more complex example, see [examples](examples) directory.

## License

[The Unlicense](https://unlicense.org)
