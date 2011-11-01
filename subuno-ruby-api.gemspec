# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "subuno-ruby-api/version"

Gem::Specification.new do |s|
  s.name        = "subuno-ruby-api"
  s.version     = Subuno::Ruby::Api::VERSION
  s.authors     = ["dneufeld"]
  s.email       = ["dale.neufeld@shopify.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby API library for Subuno API}
  s.description = %q{Provides integration with the Subuno fraud screening API}

  s.rubyforge_project = "subuno-ruby-api"

  s.add_runtime_dependency("httparty")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
