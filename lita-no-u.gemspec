Gem::Specification.new do |spec|
  spec.name          = "lita-no-u"
  spec.version       = "0.0.1"
  spec.authors       = ["Tristan Chong"]
  spec.email         = ["ong@tristaneuan.ch"]
  spec.description   = %q{A Lita handler that returns the response 'no u'}
  spec.summary       = %q{A Lita handler that returns the response 'no u'}
  spec.homepage      = "https://github.com/tristaneuan/lita-no-u"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 3.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
