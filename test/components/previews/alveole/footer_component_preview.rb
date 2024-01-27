# frozen_string_literal: true

class Alveole::FooterComponentPreview < Lookbook::Preview
  def default
    render(Alveole::FooterComponent.new)
  end
end
