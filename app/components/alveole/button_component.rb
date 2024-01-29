# frozen_string_literal: true

class Alveole::ButtonComponent < ViewComponent::Base
  CLASS_BY_TYPE = {
    primary: {
      base: "border",
      colors: {
        primary: "text-white bg-primary-500 hover:bg-primary-600 dark:hover:bg-primary-500 dark:bg-primary-600",
        green: "text-white bg-green-500 hover:bg-green-600 dark:hover:bg-green-500 dark:bg-green-600"
      }
    },
    secondary: {
      base: "border",
      colors: {
        primary: "text-gray-700 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
        green: "text-gray-500 border-green-500 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
      }
    },
    tertiary: {
      base: "",
      colors: {
        primary: "text-primary-700 focus:bg-gray-100 dark:text-gray-200 dark:focus:bg-gray-800",
        green: "text-green-700 focus:bg-gray-100 dark:text-gray-200 dark:focus:bg-gray-800"
      }
    }
  }
  TYPES = [:primary, :secondary, :tertiary]

  def initialize(href: "#", disabled: false, type: :default, color: :primary, icon: nil)
    @href = href
    @color = color
    @base_class = get_class(type, color)
    @icon = IconComponent.new(icon, class: "-ml-0.5 w-5 h-5") if icon
  end

  private

  def get_class(type, color)
    raise "Type invalide" unless TYPES.include?(type)

    CLASS_BY_TYPE[type][:base] + " " + CLASS_BY_TYPE[type][:colors][color]
  end
end
