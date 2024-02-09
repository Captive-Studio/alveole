require_relative "lib/alveole/version"

Gem::Specification.new do |spec|
  spec.name        = "alveole"
  spec.version     = Alveole::VERSION
  spec.authors     = ["Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://github.com/Captive-Studio/alveole"
  spec.summary     = "view components of Alveole."
  spec.description = "view components of Alveole."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/alveole"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency "importmap-rails"
  spec.add_dependency "tailwindcss-rails"
  spec.add_dependency "simple_form"
  spec.add_dependency "view_component", ">= 3.0"
  spec.add_dependency "inline_svg", ">= 1.5.0"


  spec.add_development_dependency "rspec-rails"
end
