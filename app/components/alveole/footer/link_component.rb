# frozen_string_literal: true

class Alveole::Footer::LinkComponent < ViewComponent::Base
  def initialize(name:, href:)
    @name = name
    @href = href
  end
end
