# Scriptures
[![Code Climate](https://codeclimate.com/github/lukeholder/scriptures.png)](https://codeclimate.com/github/lukeholder/scriptures)

Scriptures is a self contained copy of the LDS standard works as a ruby gem.

## Why?

Thinking about making a scriptures REST services out of it.
Maybe I am looking for a job at tech.lds.org? ah, nope.

## Installation

Add this line to your application's Gemfile:

    gem 'scriptures'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scriptures

## Dependancies

Needs sqlite engine installed. My preference on OSX is to install through homebrew with:

    $ brew install sqlite

## Info

The Scriptures Gem is basically a wrapper over Datamapper Models with the removal of
updates and db writes. All datamapper selectors are available and the models
are related. The Models are `Verse` , `Chapter` , `Book` and `Volume` which are related
the way you would expect.


## Usage Examples

    require 'scriptures'

    puts Scriptures::Verse.all(:scripture.like => "%faith%").first.scripture
    
    puts Scripures.search("faith").count

## TODO

* Make search improvements.
* Improve Readme and describe API
* Maybe make some built in scopes (scripture mastery list etc)
* Eventually enable API for highlighting, notes and CLI


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
