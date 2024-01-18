# frozen_string_literal: true

class Alveole::SidebarComponent < ViewComponent::Base
  def initialize(logo: nil, logo_url: nil)
    @logo = logo
    @logo_url = logo_url
  end
end
