require 'rails'
require 'view_component'

require 'alveole/version'
require 'alveole/helpers/method_helper'
require 'alveole/components/button_component'

if defined? ::Rails::Railtie
  # require 'alveole/railtie'
  require 'alveole/engine'
end

module Alveole
  class Error < StandardError; end
  # Your code goes here...
end
