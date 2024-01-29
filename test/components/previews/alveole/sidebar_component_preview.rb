# frozen_string_literal: true

class Alveole::SidebarComponentPreview < Lookbook::Preview
  # @display bg_color bg-slate-50
  def default
    render(Alveole::SidebarComponent.new) do |sidebar|
      sidebar.with_heading title: "Mon site"
      sidebar.with_item title: "Dashboard", href: "#"
      sidebar.with_item title: "Users", href: "#"
      sidebar.with_item title: "Guides", href: "#"
      sidebar.with_group title: "Customization" do |group|
        group.with_item title: "Settings", href: "#"
      end
    end
  end
end
