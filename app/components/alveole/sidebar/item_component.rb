# frozen_string_literal: true

class Alveole::Sidebar::ItemComponent < ViewComponent::Base
  def initialize(title:, icon: nil, href:, active: false)
    @title = title
    @icon = icon
    @href = href
    @active = active
    @current = @active
  end

  def before_render
    if @active == false
      @current = request.path == @href
    end
  end
end
