# frozen_string_literal: true

class Alveole::SidebarComponentPreview < Lookbook::Preview
  def default
    render(Alveole::SidebarComponent.new)
  end
end
