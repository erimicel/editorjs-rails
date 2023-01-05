require_relative "lib/editorjs/version"

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

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "railties", ">= 6.0.0"
end
