class FormActionComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(FormActionComponent.new(label: 'Example label', submit_form: true, url: nil))
  end

  def with_no_submit
    render(FormActionComponent.new(label: 'Example label', submit_form: false, url: 'example/url'))
  end
end
