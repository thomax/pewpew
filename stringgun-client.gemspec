# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require File.expand_path('../lib/version', __FILE__)

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
  s.add_runtime_dependency "httparty"
end
