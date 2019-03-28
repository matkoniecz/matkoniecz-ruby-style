Gem::Specification.new do |spec|
  spec.name          = "matkoniecz-ruby-style"
  spec.version       = 1.0
  spec.authors       = ["Mateusz Konieczny"]
  spec.email         = ["matkoniecz@gmail.com"]

  spec.summary       = "shared style config for Ruby"
  spec.license       = 'MIT'
  spec.homepage      = "https://github.com/matkoniecz/matkoniecz-ruby-style"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rubocop", "~> 0.62"
  spec.add_dependency "rubocop-rspec", "~> 1.29.1"
end
