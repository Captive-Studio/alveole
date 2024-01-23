# frozen_string_literal: true

class Alveole::Sidebar::HeadingComponent < ViewComponent::Base
  def initialize(title: nil, image: nil)
    @title = title
    @image = image
  end
end
