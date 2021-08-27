class ButtonComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :button, label: 'Example button', url: '/example/url'
  end

  def with_icon
    component :button, icon: 'icon_class', label: 'Example button', url: '/example/url'
  end

  def only_icon
    component :button, :icon_only, icon: 'icon_class', label: 'Example button', url: '/example/url'
  end
end
