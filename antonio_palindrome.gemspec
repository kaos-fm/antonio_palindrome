lib = File.expand_path("../lib",__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "antonio_palindrome/version"

Gem::Specification.new do |spec|
  spec.name = "antonio_palindrome"
  spec.version = AntonioPalindrome::VERSION
  spec.authors = ["kaosfm"]
  spec.email = ["tony.fusco.85@gmail.com"]

  spec.summary = %q{Palindrome detector}
  spec.description = %q{Learn Enough Palindrome Detector}
  spec.homepage = "https://github.com/kaos-fm/antonio_palindrome"
  spec.license = "MIT"

  #prevent pushing this gem to RubyGems.org. To allow pushes either set the
  #'allowed push host'
  #to allow pushing to a single host or delete this section to allow pushing to
  #any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gems pushes."
  end

  #Specify wich file should be added to the gem when its released
  #the `git ls-files -z` loads the files to RubyGems
  #that have been added into git
  spec.files = Dir.chdir(File.expand_path('..',__FILE__)) do
    `git ls-files -z`.split("\x0").reject do
      |f| f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) {|f| File.basename(f)}
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
