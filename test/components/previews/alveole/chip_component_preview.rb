# frozen_string_literal: true

class Alveole::ChipComponentPreview < Lookbook::Preview
  def default
    render(Alveole::ChipComponent.new label: "Default")
  end
end
