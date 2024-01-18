# frozen_string_literal: true

class Alveole::ChipComponent < ViewComponent::Base
  def initialize(label:, outline: false, color: :default, size: :sm)
    @label = label
    @outline = outline
    @color = color
    @class_color = CLASS_COLOR[color.to_sym]
    @class_size = CLASS_SIZE[size.to_sym]
  end

  CLASS_COLOR = {
    default: "bg-gray-50 ring-gray-500/10 text-gray-600",
    error: "bg-red-50 text-red-700 ring-red-600/10",
    warning: "bg-yellow-50 text-yellow-800 ring-yellow-600/20",
    success: "bg-green-50 text-green-700 ring-green-600/20",
    info: "bg-blue-50 text-blue-700 ring-blue-700/10",
    primary: "bg-primary-50 text-primary-700 ring-primary-700/10",
  }
  CLASS_SIZE = {
    sm: "text-sm gap-x-2",
    xs: "text-xs"
  }
end
