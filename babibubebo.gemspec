# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'babibubebo/version'

Gem::Specification.new do |spec|
  spec.name          = "babibubebo"
  spec.version       = Babibubebo::VERSION
  spec.authors       = ["mogulla3"]
  spec.email         = ["hs.iarn3@gmail.com"]

  spec.summary       = %q{babibubebo language converter}
  spec.description   = %q{babibubebo language converter}
  spec.homepage      = "https://github.com/mogulla3/babibubebo"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
