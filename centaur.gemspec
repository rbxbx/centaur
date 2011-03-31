# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "centaur/version"

Gem::Specification.new do |s|
  s.name        = "centaur"
  s.version     = Centaur::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robert Pitts"]
  s.email       = ["rbxbxdev@gmail.com"]
  s.homepage    = "http://textaligncentaur.com"
  s.summary     = %q{I'm bringin' Centaur back}
  s.description = %q{I'm bringin' Centaur back}

  s.rubyforge_project = "centaur"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
