# frozen_string_literal: true

class Alveole::SidebarComponentPreview < Lookbook::Preview
  def default
    render(Alveole::SidebarComponent.new) do
      render(Alveole::SidebarItemComponent.new(title: "Dashboard", url: "#"))
      render(Alveole::SidebarItemComponent.new(title: "Users", url: "#"))
      render(Alveole::SidebarItemComponent.new(title: "Guides", url: "#"))
      render(Alveole::SidebarGroupComponent.new(title: "Customization")) do
        render(Alveole::SidebarItemComponent.new(title: "Settings", url: "#"))
      end
    end
  end
end
