module Alveole
  module Generators
    # rails g alveole:config
    class ConfigGenerator < Rails::Generators::Base # :nodoc:
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc <<~DESC
        Description:
        Copies Alveole configuration file to your application's initializer directory.
      DESC

      def copy_config_file
        template 'alveole_config.rb', 'config/initializers/alveole_config.rb'
      end
    end
  end
end
