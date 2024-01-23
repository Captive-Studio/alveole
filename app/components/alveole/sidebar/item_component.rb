# frozen_string_literal: true

class Alveole::Sidebar::ItemComponent < ViewComponent::Base
  def initialize(title:, icon: nil, href:)
    @title = title
    @icon = icon
    @href = href
    @current = false
  end

  def before_render
    @current = request.path == @href
  end
end
