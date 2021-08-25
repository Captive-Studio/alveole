class ButtonComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :button, label: 'Example button', url: '/example/url'
  end
end
