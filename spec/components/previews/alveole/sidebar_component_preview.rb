class Alveole::SidebarComponentPreview < Lookbook::Preview
  # scenarios defined here
  def standard
    render ButtonComponent.new(text: "Click me")
  end
end
