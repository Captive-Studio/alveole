# frozen_string_literal: true

class Alveole::AlertComponent < ViewComponent::Base
  CLASS_CONTAINER = {
    info: "text-blue-800 dark:text-blue-400 bg-blue-50",
    danger: "text-red-800 bg-red-50 dark:text-red-400",
    success: "text-green-800 bg-green-50 dark:text-green-400",
    warning: "text-yellow-800 bg-yellow-50 dark:text-yellow-300",
    dark: "bg-gray-50 dark:bg-gray-800",
  }
  CLASS_BUTTON = {
    info: "bg-blue-50 text-blue-500 focus:ring-blue-400 hover:bg-blue-200 dark:text-blue-400",
    danger: "bg-red-50 text-red-500 dark:text-red-400 focus:ring-red-400 hover:bg-red-200",
    success: "bg-green-50 text-green-500 focus:ring-green-400 hover:bg-green-200 dark:text-green-400",
    warning: "bg-yellow-50 text-yellow-500 focus:ring-yellow-400 hover:bg-yellow-200 dark:text-yellow-300",
    dark: "bg-gray-50 text-gray-500 focus:ring-gray-400 hover:bg-gray-200 dark:bg-gray-800 dark:text-gray-300 dark:hover:text-white",
  }
  def initialize(type:, dismiss: false)
    @class_container = CLASS_CONTAINER[type.to_sym]
    @class_button = CLASS_BUTTON[type.to_sym]
    @dismiss = dismiss
  end
end
