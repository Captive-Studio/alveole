# frozen_string_literal: true

# require 'inline_svg'

class Alveole::IconComponent < ViewComponent::Base
  include InlineSvg::ActionView

  def initialize(name, **args)
    @name = format_name(name.to_s)
    @options = args
  end

  def format_name(name)
    base_folder = "icons/"
    name = base_folder + name
    return name if name.end_with?(".svg")

    name + ".svg"
  end
end
