# frozen_string_literal: true

class Alveole::FooterComponentPreview < Lookbook::Preview
  def default
    render(Alveole::FooterComponent.new(copyright_notice: "© 2020 Your Company, Inc. All rights reserved."))
  end

  def with_social_links
    render(Alveole::FooterComponent.new(copyright_notice: "© 2020 Your Company, Inc. All rights reserved.")) do |footer|
      footer.with_link name: "Captive", href: "https://captive.fr/"
    end
  end
end
