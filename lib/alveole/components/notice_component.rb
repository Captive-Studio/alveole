class NoticeComponent < ViewComponent::Base
  TYPES = %w[notice alert].freeze
  def initialize(title:, messages: [], type: nil)
    super

    @type = type if TYPES.include?(type)
    @type ||= 'alert'
    @title = title
    @messages = messages
  end

  def render?
    @messages.any?
  end
end
