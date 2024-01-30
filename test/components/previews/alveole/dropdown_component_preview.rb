# frozen_string_literal: true

class Alveole::DropdownComponentPreview < Lookbook::Preview
  def default
    render(Alveole::DropdownComponent.new)
  end
end
