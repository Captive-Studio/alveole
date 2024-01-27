# frozen_string_literal: true

class Alveole::FormLayoutComponentPreview < Lookbook::Preview
  def default
    render(Alveole::FormLayoutComponent.new)
  end
end
