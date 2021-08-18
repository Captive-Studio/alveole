class HeadingComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(HeadingComponent.new(heading: 'Example heading', sub: 'Example sub title'))
  end

  def without_sub
    render(HeadingComponent.new(heading: 'Example heading', sub: nil))
  end
end
