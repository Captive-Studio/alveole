class AvatarComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :avatar, image: '/example/image', url: '/example/url'
  end

  def without_url
    component :avatar, image: '/example/image'
  end
end
