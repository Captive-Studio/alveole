require_relative 'lib/alveole/version'

Gem::Specification.new do |spec|
  spec.name          = 'alveole'
  spec.version       = Alveole::VERSION
  spec.authors       = ['Marine Sourin', 'Marine Domine', 'Cedric Feyaerts', 'Thomas Kienlen']
  spec.email         = ['marinesourin@live.fr', 'marine@captive.fr', 'c.feyaerts@captive.fr', 't.kienlen@captive.fr']

  spec.summary       = 'Components and generator for the Alveole design system'
  spec.homepage      = 'http://127.0.0.1' # TODO: fix this
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['allowed_push_host'] = 'http://127.0.0.1' # TODO: fix this

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'http://127.0.0.1' # TODO: fix this
  spec.metadata['changelog_uri'] = 'http://127.0.0.1' # TODO: fix this

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 4.1.0'

  spec.add_development_dependency 'rubocop', '~> 1.18'
end
