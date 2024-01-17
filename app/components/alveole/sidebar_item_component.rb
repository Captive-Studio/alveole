# frozen_string_literal: true

class Alveole::SidebarItemComponent < ViewComponent::Base
  def initialize(title:, icon: nil, url:)
    @title = title
    @icon = icon
    @url = url
  end
end
