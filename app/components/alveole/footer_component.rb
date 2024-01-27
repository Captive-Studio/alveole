# frozen_string_literal: true

class Alveole::FooterComponent < ViewComponent::Base
  renders_many :links, Alveole::Footer::LinkComponent

  def initialize(copyright_notice:)
    @copyright_notice = copyright_notice
  end
end
