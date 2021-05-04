lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "japanese_numbers/version"

Gem::Specification.new do |spec|
  spec.name          = "japanese_numbers"
  spec.version       = JapaneseNumbers::VERSION
  spec.authors       = ["osyoyu"]
  spec.email         = ["osyoyu@osyoyu.com"]

  spec.summary       = %q{Parser for Japanese numbers like "123万4567" or "5000兆円".}
  spec.homepage      = "https://github.com/osyoyu/ruby-japanese_numbers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 10.0"
end
