class ButtonComponent < ViewComponent::Base
  MODIFIERS = %i[small icon_only primary].freeze

  def initialize(url:, label:, icon: nil, options: {})
    super

    @url = url
    @label = label
    @icon = icon
    @options = options

    @modifier_classes = (options.keys & MODIFIERS).map do |modifier|
      "button--#{modifier.to_s.dasherize}"
    end
  end
end
