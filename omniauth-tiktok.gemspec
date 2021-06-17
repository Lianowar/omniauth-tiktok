# frozen_string_literal: true

require_relative "lib/omniauth/tiktok/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-tiktok"
  spec.version       = Omniauth::Tiktok::VERSION
  spec.authors       = ["novikov.vasiliy"]
  spec.email         = ["novikov@oneclick.life"]

  spec.summary       = 'tiktok OAuth2 Strategy for OmniAuth'
  spec.homepage      = 'https://github.com'
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth', '~> 1.9'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency 'rake'
end
