class BadgeComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(BadgeComponent.new(label: 'example de badge'))
  end

  def with_options
    render(BadgeComponent.new(label: 'example de badge', options: { data: 'example-option' }))
  end
end
