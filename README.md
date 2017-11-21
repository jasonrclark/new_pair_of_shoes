# A New Pair of Shoes

This repository contains slides and code examples about
[Shoes](http://shoesrb.com), a super-friendly Ruby toolkit for writing
your own Graphical User Interface (GUI) apps.

These examples have been featured at
[RubyConf](http://www.rubyconf.org/program#session-220) and other
conferences.

## Installation

1. Clone this repository onto your machine
2. Look inside the `.ruby-version` file, then
[download](http://jruby.org/download) and install that version of
JRuby
3. Install all the dependencies by running `gem install bundler` and
then `bundle install`

## Viewing the Presentations

Pick a configuration file at the top-level directory of this
repository (e.g., `config.rb`, and then run it like so):

### Non-macOS systems

```
bundle exec wingtips config.rb
```

### macOS

```
env JRUBY_OPTS=-J-XstartOnFirstThread bundle exec wingtips rubyconflt_config.rb
```

Enjoy!
