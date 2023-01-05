# frozen_string_literal: true

require_relative "lib/editorjs/rails/version"

Gem::Specification.new do |spec|
  spec.name = "editorjs-rails"
  spec.version = Editorjs::VERSION
  spec.authors = ["Erim Icel"]
  spec.email = ["erimicel@gmail.com"]

  spec.summary = "Block styled editor for Rails."
  spec.description = "Next generation block styled editor for Rails with Editor.js https://editorjs.io/"
  spec.homepage = "https://github.com/erimicel/editorjs-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/erimicel/editorjs-rails"
  spec.metadata["changelog_uri"] = "https://github.com/erimicel/editorjs-rails/Changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  version_string = [">= 6.1"]

  spec.add_runtime_dependency "actionpack",    version_string
  spec.add_runtime_dependency "activesupport", version_string
  spec.add_runtime_dependency "railties",      version_string

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
