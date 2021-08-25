class FormSubmitComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :form_submit, label: 'Example label'
  end
end
