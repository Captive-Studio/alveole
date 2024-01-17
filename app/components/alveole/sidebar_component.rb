# frozen_string_literal: true

class Alveole::SidebarComponent < ViewComponent::Base
  def initialize(logo: nil, logo_url: Rails.application.routes.url_helpers.root_path)
    @logo = logo
    @logo_url = logo_url
  end
end
