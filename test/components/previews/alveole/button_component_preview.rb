# frozen_string_literal: true

class Alveole::ButtonComponentPreview < Lookbook::Preview
  def default
    render(Alveole::ButtonComponent.new) do |_b|
      "Button"
    end
  end

  def primary
    render(Alveole::ButtonComponent.new(color: :primary)) do |_b|
      "Button"
    end
  end
end
