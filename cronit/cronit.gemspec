# frozen_string_literal: true

require_relative "lib/cronit/version"

Gem::Specification.new do |spec|
  spec.name = "cronit"
  spec.version = Cronit::VERSION
  spec.authors = ["Cronit"]
  spec.email = ["alexis@cronit.app"]

  spec.summary = "Ruby bindings for https://cronit.app cronjob scheduling app"
  spec.description = "Ruby bindings for https://cronit.app cronjob scheduling app"
  spec.homepage = "https://cronit.app"
  spec.required_ruby_version = ">= 2.6.0"
  
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Cronit-app/binding-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/Cronit-app/binding-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "httparty"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
