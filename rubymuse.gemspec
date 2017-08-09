# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubymuse/version"

Gem::Specification.new do |spec|
  spec.name          = "rubymuse"
  spec.version       = Rubymuse::VERSION
  spec.authors       = ["Alex Gontar"]
  spec.email         = ["mosegontar@gmail.com"]

  spec.summary       = %q{Ruby wrapper for Datamuse api}
  spec.description   = %q{Provides a lightweight Ruby wrapper for the Datamuse API.
  Datamuse query parameters are passed to the endpoint method as keyword arguments}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "httparty"
  spec.add_dependency "json"
end
