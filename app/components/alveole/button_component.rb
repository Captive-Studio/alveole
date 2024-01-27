# frozen_string_literal: true

class Alveole::ButtonComponent < ViewComponent::Base
  def initialize(href: "#", disabled: false, color: :default, icon: nil)
    @href = href
    @color = color
    @class_color = CLASS_COLOR[color.to_sym]
    @icon = IconComponent.new(icon, class: "-ml-0.5 w-5 h-5") if icon
  end

  CLASS_COLOR = {
    default: "text-gray-700 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
    primary: "text-white bg-primary-500 hover:bg-primary-600 dark:hover:bg-primary-500 dark:bg-primary-600"
  }
end
