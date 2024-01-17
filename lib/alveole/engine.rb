module Alveole
  class Engine < ::Rails::Engine
    isolate_namespace Alveole

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
