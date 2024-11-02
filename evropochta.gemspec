# frozen_string_literal: true

require_relative "lib/evropochta/version"

Gem::Specification.new do |spec|
  spec.name = "evropochta"
  spec.version = Evropochta::VERSION
  spec.authors = ["Denis Grahovskiy"]
  spec.email = ["kuberlite@gmail.com"]
  spec.summary = "Evropochta API wrapper"

  spec.homepage = "https://github.com/KuberLite/evropochta"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/KuberLite/evropochta/issues",
    "changelog_uri" => "https://github.com/KuberLite/evropochta/releases",
    "source_code_uri" => "https://github.com/KuberLite/evropochta",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "logger"
end
