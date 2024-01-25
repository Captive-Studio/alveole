# frozen_string_literal: true

class FormLayoutComponentPreview < ViewComponent::Preview
  def default
    render(FormLayoutComponent.new)
  end
end
