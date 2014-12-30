stringgun-client
================

Ruby client for stringgun.io

## Up and running

```gem install stringgun-client```


## Usage

```
  require 'stringgun-client'

  stringgun = Stringgun::Client.aquire_target
  stringun.fire 'Go out in the'
  stringun.fire 'meadow hills are'
  stringun.fire 'a-green sing me a'
  stringun.fire 'rainbow steal med a dream'
  stringun.inspect_target
```
