pewpew
================

Ruby client for stringgun.io

## Up and running

```gem install pewpew```


## Usage

```
  require 'pewpew'

  stringgun = Stringgun::Client.aquire_target
  stringgun.fire 'Go out in the'
  stringgun.fire 'meadow hills are'
  stringgun.fire 'a-green sing me a'
  stringgun.fire 'rainbow steal med a dream'
  stringgun.inspect_target
```
