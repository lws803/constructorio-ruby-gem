# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'constructorio/version'

Gem::Specification.new do |spec|
  spec.name          = "constructorio"
  spec.version       = ConstructorIO::VERSION
  spec.authors       = ["Dan McCormick"]
  spec.email         = ["dan@constructor.io"]
  spec.summary       = %q{Ruby gem for Constructor.io}
  spec.description   = %q{Ruby gem for Constructor.io's autocomplete service.}
  spec.homepage      = "http://constructor.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.9', '>= 0.9.0'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry', '~> 0.10', '>= 0.10.1'
  spec.add_development_dependency 'mocha', '~> 1.1', '>= 1.1.0'
  spec.add_development_dependency 'minitest', '~> 5.5', '>= 5.5.1'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end
