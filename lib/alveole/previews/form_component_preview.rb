class FormComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    render(FormComponent.new) do |form|
      form.actions do
        tag.span('Example actions')
      end
      tag.span('Example content')
    end
  end

  def without_actions
    render(FormComponent.new) do |_form|
      tag.span('Example content')
    end
  end
end
