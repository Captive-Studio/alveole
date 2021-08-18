class HeadingComponent < ViewComponent::Base
  def initialize(heading: nil, sub: nil)
    super

    @heading = heading
    @sub = sub
  end
end
