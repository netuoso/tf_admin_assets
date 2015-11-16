# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tf_admin_assets/version'

Gem::Specification.new do |spec|
  spec.name          = "tf_admin_assets"
  spec.version       = TfAdminAssets::VERSION
  spec.authors       = ["Andrew Chaney (netuoso)"]
  spec.email         = ["andrewc@pobox.com"]

  spec.summary       = %q{TechFlavor admin template.}
  spec.description   = %q{Assets required for use with TechFlavor admin template.}
  spec.homepage      = "http://www.techflavor.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "localhost"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = Dir["{app,lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", "~> 4.0"
end
