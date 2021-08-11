class NoticeComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(NoticeComponent.new(title: 'Example Alert', messages: ['Message 1', 'Message 2']))
  end

  def without_messages
    render(NoticeComponent.new(title: 'Example Notice'))
  end

  def with_type_notice
    render(NoticeComponent.new(title: 'Example Notice', messages: ['Message 1', 'Message 2'], type: 'notice'))
  end
end
