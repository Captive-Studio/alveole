class FormSubmitComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(FormSubmitComponent.new(label: 'Example label'))
  end
end
