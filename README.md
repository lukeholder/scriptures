# Scriptures

This is a self contained copy of the LDS standard works as a ruby gem.

## Why?

Because I can.
Thinking about making a scriptures REST services out of it.
Maybe I am looking for a job at tech.lds.org? HAHA.

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

## Usage Examples

    require 'scriptures'
    
    puts Scriptures::Verse.all(:scripture.like => "%faith%").first.scripture
    
    puts Scripures.search("faith").count

## TODO

* Make search improvements.
* Improve Readme and describe API


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
