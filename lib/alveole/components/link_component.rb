class LinkComponent < ViewComponent::Base
  include Alveole::Concerns::Bem

  MODIFIERS = %i[icon_only].freeze

  def initialize(url:, label:, icon: nil, modifiers: [], options: {})
    super

    @url = url
    @label = label
    @icon = icon
    @options = options
    @options[:title] = label
    self.modifiers = modifiers
  end
end
