# frozen_string_literal: true

class Alveole::Input::CounterComponentPreview < ViewComponent::Preview
  def default
    render(Alveole::Input::CounterComponent.new)
  end
end
