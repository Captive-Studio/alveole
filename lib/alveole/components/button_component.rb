class ButtonComponent < ViewComponent::Base
  include Alveole::Concerns::Bem

  MODIFIERS = %i[small icon_only primary].freeze

  def initialize(url:, label:, icon: nil, modifiers: [], options: {})
    super

    @url = url
    @label = label
    @icon = icon
    @options = options
    self.modifiers = modifiers
  end
end
