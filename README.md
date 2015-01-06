stringgun-client
================

Ruby client for stringgun.io

## Up and running

```gem install stringgun-client```


## Usage

```
  require 'stringgun-client'

  stringgun = Stringgun::Client.aquire_target
  stringgun.fire 'Go out in the'
  stringgun.fire 'meadow hills are'
  stringgun.fire 'a-green sing me a'
  stringgun.fire 'rainbow steal med a dream'
  stringgun.inspect_target
```
