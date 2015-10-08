# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "activefacts-generators"
  spec.version       = "1.7.1"
  spec.authors       = ["Clifford Heath"]
  spec.email         = ["clifford.heath@gmail.com"]

  spec.summary       = %q{Code Generators for the ActiveFacts suite}
  spec.description   = %q{Code generators for the ActiveFacts Fact Modeling suite, including the Constellation Query Language}
  spec.homepage      = "http://github.com/cjheath/activefacts-generators"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency(%q<activefacts-metamodel>, [">= 1.7.0", "~> 1.7"])
  spec.add_runtime_dependency(%q<activefacts-rmap>, [">= 1.7.0", "~> 1.7"])
  spec.add_runtime_dependency(%q<activesupport>)
end
