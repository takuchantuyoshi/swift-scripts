
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Unused/version"

Gem::Specification.new do |spec|
  spec.name          = "Unused"
  spec.version       = Unused::VERSION
  spec.authors       = ["takuchantuyoshi"]

  spec.summary       = %q{TODO: Write a short summary, because RubyGems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/takuchantuyoshi/swift-scripts"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(bin/Unused README.md LICENSE)

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
