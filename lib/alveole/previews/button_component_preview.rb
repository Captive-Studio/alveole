class ButtonComponentPreview < ViewComponent::Preview
  layout false

  def with_default
    render(ButtonComponent.new(label: "Example button", url: "/example/url"))
  end
end
