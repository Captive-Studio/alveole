class AvatarComponent < ViewComponent::Base
  def initialize(image:, url: nil, options: {})
    super

    @image = image
    @url = url
    @options = options
  end
end
