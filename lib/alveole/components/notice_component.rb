class FormAlertComponent < ViewComponent::Base
  TYPES = %w[notice alert].freeze
  def initialize(title:, messages: [], type: nil)
    super

    @type = type if TYPE.includes?(type)
    @type ||= 'alert'
    @title = title
    @messages = messages
  end

  def render?
    @messages.any?
  end
end
