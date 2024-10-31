require_relative "lib/evropochta/version"

Gem::Specification.new do |spec|
  spec.name = "example"
  spec.version = Evropochta::VERSION
  spec.authors = ["Denis Grahovskiy"]
  spec.email = ["kuberlite@gmail.com"]

  spec.summary = ""
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
end