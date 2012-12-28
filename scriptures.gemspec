# -*- encoding: utf-8 -*-
require File.expand_path('../lib/scriptures/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Luke Holder"]
  gem.email         = ["lukemh@gmail.com"]
  gem.description   = %q{The Standard Works of The Church of Jesus Christ of Latter-day Saints}
  gem.summary       = %q{The Scriptures}
  gem.homepage      = "http://lukeholder.net/projects/scriptures"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "scriptures"
  gem.require_paths = ["lib"]
  gem.version       = Scriptures::VERSION

  gem.add_dependency('dm-sqlite-adapter')
  gem.add_dependency('data_mapper')

end
