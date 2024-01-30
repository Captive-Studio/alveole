# frozen_string_literal: true

class Alveole::MegaMenuComponentPreview < Lookbook::Preview
  def default
    render(Alveole::MegaMenuComponent.new) do |mega_menu|
      mega_menu.with_logo do
        image_tag "https://www.captive.fr/hs-fs/hubfs/logo_captive.png?width=200&height=52&name=logo_captive.png", class: "h-8"
      end
    end
  end
end
