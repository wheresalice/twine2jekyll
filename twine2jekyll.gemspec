
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "twine2jekyll/version"

Gem::Specification.new do |spec|
  spec.name          = "twine2jekyll"
  spec.version       = Twine2jekyll::VERSION
  spec.authors       = ["WheresAlice"]
  spec.email         = ["alice@kaerast.info"]

  spec.summary       = %q{Convert a Twine story into a Jekyll site.}
  spec.description   = %q{Convert a Twine story into multiple Markdown pages for a Jekyll site.}
  spec.homepage      = "https://github.com/wheresalice/twine2jekyll"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency("nokogiri")
  spec.add_dependency("jekyll")
end
