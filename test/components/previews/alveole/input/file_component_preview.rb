# frozen_string_literal: true

class Input::FileComponentPreview < ViewComponent::Preview
  def default
    render(Input::FileComponent.new)
  end
end
