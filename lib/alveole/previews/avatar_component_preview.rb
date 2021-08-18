class AvatarComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(AvatarComponent.new(image: '/example/image', url: '/example/url'))
  end

  def without_url
    render(AvatarComponent.new(image: '/example/image'))
  end
end
