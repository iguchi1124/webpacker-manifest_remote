# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webpacker/manifest_remote/version'

Gem::Specification.new do |spec|
  spec.name          = "webpacker-manifest_remote"
  spec.version       = Webpacker::ManifestRemote::VERSION
  spec.authors       = ["Shota Iguchi"]
  spec.email         = ["shota-iguchi@cookpad.com"]

  spec.summary       = 'webpacker extention to use remote webpacker url'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '>= 4.2'
  spec.add_dependency 'webpacker', '>= 2'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
