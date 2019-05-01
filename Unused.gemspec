
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Unused/version"

Gem::Specification.new do |spec|
  spec.name          = "Unused"
  spec.version       = Unused::VERSION
  spec.authors       = ["takuchantuyoshi"]

  spec.summary       = "Some useful scripts for swift developers"
  spec.description   = "Searches for unused swift functions, and variable at specified path"
  spec.homepage      = "https://github.com/takuchantuyoshi/swift-scripts"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(bin/Unused README.md LICENSE)

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
