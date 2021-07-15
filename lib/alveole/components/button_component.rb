class ButtonComponent < ViewComponent::Base
  def initialize(url:, label:, options: {})
    super

    @url = url
    @label = label
    @options = options
  end
end
