# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stringgun-client/version'

Gem::Specification.new do |s|
  s.name        = "stringgun-client"
  s.version     = Stringgun::VERSION
  s.authors     = ["Thomas Drevon"]
  s.email       = ["thomas@drevon.no"]
  s.homepage    = ""
  s.summary     = %q{Ruby client for stringgun.io}
  s.description = %q{Ruby client for stringgun.io}

  s.rubyforge_project = "stringgun-client"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "bundler", "~> 1.7"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_runtime_dependency "rest_client", "~> 1.8.2"
end
