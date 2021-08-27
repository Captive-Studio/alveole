class HeadingComponent < ViewComponent::Base
  include Alveole::Concerns::Bem

  MODIFIERS = [:sub, 1, 2, 3, 4].freeze

  def initialize(label: nil, level: 1, modifiers: [], options: {})
    super

    @label = label
    @tag_name = "h#{level}"

    modifiers << level
    self.modifiers = modifiers
  end
end
