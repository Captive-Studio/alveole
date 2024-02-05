# frozen_string_literal: true

class Alveole::ButtonComponent < ViewComponent::Base
  CLASS_BY_TYPE = {
    primary: {
      base: "border",
      colors: {
        primary: "text-white bg-primary-500 hover:bg-primary-600 dark:hover:bg-primary-500 dark:bg-primary-600",
        green: "text-white bg-green-500 hover:bg-green-600 dark:hover:bg-green-500 dark:bg-green-600",
        red: "text-white bg-red-500 hover:bg-red-600 dark:hover:bg-red-500 dark:bg-red-600",
        yellow: "text-white bg-yellow-400 hover:bg-yellow-500 dark:hover:bg-yellow-400 dark:bg-yellow-500",
        dark: "text-white bg-gray-800 hover:bg-gray-900 dark:hover:bg-gray-500 dark:bg-gray-600",
      }
    },
    secondary: {
      base: "border",
      colors: {
        primary: "text-gray-700 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
        green: "text-gray-700 border-green-500 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
        red: "text-gray-700 border-red-500 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
        yellow: "text-gray-700 border-yellow-400 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
        dark: "text-gray-800 border-gray-800 bg-white hover:bg-gray-100 dark:bg-gray-900 dark:text-gray-200 dark:border-gray-700 dark:hover:bg-gray-800",
      }
    },
    tertiary: {
      base: "hover:bg-gray-50 focus:bg-gray-100",
      colors: {
        primary: "text-primary-700 dark:text-gray-200 dark:focus:bg-gray-800",
        green: "text-green-700 dark:text-gray-200 dark:focus:bg-gray-800",
        red: "text-red-700 dark:text-gray-200 dark:focus:bg-gray-800",
        yellow: "text-yellow-500 dark:text-gray-200 dark:focus:bg-gray-800",
        dark: "text-gray-800 dark:text-gray-200 dark:focus:bg-gray-800",
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
