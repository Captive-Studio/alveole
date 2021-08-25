class HeadingComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(HeadingComponent.new(label: 'Example heading'))
  end

  def with_level
    render(HeadingComponent.new(label: 'Example heading', level: 2))
  end

  def with_sub
    render(HeadingComponent.new(label: 'Example subheading', modifiers: [:sub]))
  end
end
