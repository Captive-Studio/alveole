class NoticeComponent < ViewComponent::Base
  include Alveole::Concerns::Bem

  MODIFIERS = [:alert].freeze

  def initialize(title:, messages: [], type: nil, modifiers: [], options: {})
    super

    @title = title
    @messages = messages
    self.modifiers = modifiers
  end

  def render?
    @messages.any?
  end
end
