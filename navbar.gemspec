# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'navbar/version'

Gem::Specification.new do |spec|
  spec.name          = "navbar"
  spec.version       = Navbar::VERSION
  spec.authors       = ["Dmitry Larkin"]
  spec.email         = ["dmitry.larkin@gmail.com"]
  spec.description   = %q{Rails Navigation Bar Builder}
  spec.summary       = %q{Rails Navigation Bar Builder}
  spec.homepage      = "http://github.com/dml/navbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 2.13'
  spec.add_development_dependency 'rspec-rails', '~> 2.13'
  spec.add_development_dependency 'actionpack', '>= 3.1.0'
  spec.add_development_dependency 'activesupport', '>= 3.1.0'
end
