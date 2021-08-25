class LinkComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :link, label: 'Example link', url: '/example/url'
  end

  def with_icon
    component :link, icon: 'icon_class', label: 'Example link', url: '/example/url'
  end

  def only_icon
    component :link, :icon_only, icon: 'icon_class', label: 'Example link', url: '/example/url'
  end
end
