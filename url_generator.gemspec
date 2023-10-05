# frozen_string_literal: true

require_relative "lib/url_generator/version"

Gem::Specification.new do |spec|
  spec.name = "url_generator"
  spec.version = UrlGenerator::VERSION
  spec.authors = ["피수영"]
  spec.email = ["auburn0820@gmail.com"]

  spec.summary = "Tool to simplify URL string"
  spec.description = "Developed to create URL string using Builder pattern for simplicity and reduced errors"
  spec.homepage = "https://github.com/auburn0820/uri-generator"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/auburn0820/uri-generator"
  spec.metadata["changelog_uri"] = "https://github.com/auburn0820/uri-generator"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
