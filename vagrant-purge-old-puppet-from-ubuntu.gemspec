# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-puppet-install/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-purge-old-puppet-from-ubuntu"
  spec.version       = VagrantPlugins::PuppetInstall::VERSION
  spec.authors       = ["Mike Caspar"]
  spec.email         = ["mike@caspar.com"]
  spec.description   = %q{shell scripts with ruby based tests to validate the scripts to remove an older version of puppet from ubuntu vagrant images.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/MikeCaspar/vagrant-purge-old-puppet-from-ubuntu"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11.0"
  spec.add_development_dependency "rake", "~> 10.1.1"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "rubocop", "~> 0.17.0"
end
