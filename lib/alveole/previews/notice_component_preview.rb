class NoticeComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :notice, title: 'Example Alert', messages: ['Message 1', 'Message 2']
  end

  def without_messages
    component :notice, :alert, title: 'Example Notice'
  end

  def with_alert
    component :notice, :alert, title: 'Example Notice', messages: ['Message 1', 'Message 2']
  end
end
