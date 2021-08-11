class BreadcrumbsComponent < ViewComponent::Base
  def initialize(label:, url: nil)
    super

    @url = url
    @label = label
  end
end
