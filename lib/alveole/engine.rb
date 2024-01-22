require "importmap-rails"
require "view_component"

module Alveole
  class Engine < ::Rails::Engine
    isolate_namespace Alveole

    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "alveole.importmap", before: "importmap" do |app|
      # NOTE: this will add pins from this engine to the main app
      # https://github.com/rails/importmap-rails#composing-import-maps
      app.config.importmap.paths << root.join("config/importmap.rb")

      # NOTE: something about cache; I did not look into it.
      # https://github.com/rails/importmap-rails#sweeping-the-cache-in-development-and-test
      app.config.importmap.cache_sweepers << root.join("app/assets/javascripts")
    end

    # NOTE: add engine manifest to precompile assets in production
    initializer "alveole.assets" do |app|
      app.config.assets.precompile += %w[alveole_manifest]
    end
  end
end
