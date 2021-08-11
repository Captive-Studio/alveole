class FormComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(FormComponent.new) do |form|
      form.actions do
        content_tag(:span, 'Example actions')
      end
      content_tag(:span, 'Example content')
    end
  end

  def without_actions
    render(FormComponent.new) do |_form|
      content_tag(:span, 'Example content')
    end
  end
end
