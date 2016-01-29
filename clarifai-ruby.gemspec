# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clarifai/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "clarifai-ruby"
  spec.version       = Clarifai::Ruby::VERSION
  spec.authors       = ["Charlyn Gonda", "Prince Wilson"]
  spec.email         = ["chardane@gmail.com", "maxcell.wilson@gmail.com"]

  spec.summary       = %q{A Ruby client for the Clarifai API}
  spec.description   = %q{Clarifai is a visual recognition API. Clarifai's algorithms enable fine grained classification, localization of objects in images and similarity search based on the combination of semantic and visual properties. }
  spec.homepage      = "https://github.com/chardane/clarifai-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "httparty", "~> 0.13.7"
end
