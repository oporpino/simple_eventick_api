# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_eventick_api/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_eventick_api"
  spec.version       = SimpleEventickApi::VERSION
  spec.authors       = ["Gustavo Porpino"]
  spec.email         = ["gporpino@gmail.com"]
  spec.description   = %q{It`s a very simple api to use eventick services}
  spec.summary       = %q{It`s a very simple api to use eventick services}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
