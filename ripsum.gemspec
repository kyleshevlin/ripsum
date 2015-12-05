# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ripsum/version'

Gem::Specification.new do |spec|
  spec.name          = "ripsum"
  spec.version       = Ripsum::VERSION
  spec.authors       = ["Kyle Shevlin"]
  spec.email         = ["kyle.a.shevlin@gmail.com"]

  spec.summary       = %q{View helper that generates a random amount of lorem ipsum text with each page load.}
  spec.description   = %q{Using a small helper method, insert a random amount of lorem ipsum with each page load. Helps you stress test your design against edge cases and worst case scenarios}
  spec.homepage      = "http://www.github.com/kyleshevlin/ripsum"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
