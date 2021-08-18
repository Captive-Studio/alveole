require 'rails/engine'
require 'view_component/engine'

module Alveole
  # :nodoc:
  class Engine < ::Rails::Engine
    # isolate_namespace Primer::ViewComponents

    config.autoload_once_paths = %W[
      #{root}/lib/alveole/concerns
      #{root}/lib/alveole/components
      #{root}/lib/alveole/helpers
      #{root}/lib/alveole/javascript
      #{root}/lib/generators/
    ]

    config.view_component.preview_paths << "#{Engine.root}/lib/alveole/previews"
    config.view_component.show_previews_source = true

    # config.primer_view_components = ActiveSupport::OrderedOptions.new

    # config.primer_view_components.force_functional_colors = true
    # config.primer_view_components.force_system_arguments = false
    # config.primer_view_components.silence_deprecations = false

    # initializer "primer_view_components.assets" do |app|
    #   app.config.assets.precompile += %w[primer_view_components] if app.config.respond_to?(:assets)
    # end
  end
end
