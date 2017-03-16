# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'japic/version'

Gem::Specification.new do |spec|
  spec.name          = "japic"
  spec.version       = Japic::VERSION
  spec.authors       = ["Naoki Kanatani"]
  spec.email         = ["k12naoki@gmail.com"]

  spec.summary       = %q{an  API client liblary for Jleague API (unofficial)}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/naoki-k/japic"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
