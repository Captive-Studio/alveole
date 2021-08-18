class BadgeComponent < ViewComponent::Base
  def initialize(label:, options: {})
    super

    @label = label
    @options = options
  end
end
