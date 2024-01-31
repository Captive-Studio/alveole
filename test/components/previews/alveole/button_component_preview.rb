# frozen_string_literal: true

class Alveole::ButtonComponentPreview < Lookbook::Preview
  # Buttons
  # ------------
  #
  # - **Primary Buttons**: In UX design, primary buttons serve as the focal point for the most important actions. They are typically highlighted with vibrant colors or prominent placement to draw immediate attention. Primary buttons represent key actions like "Submit" in forms or "Buy Now" on product pages. Their distinctiveness helps users identify the primary action at a glance.
  # - **Secondary Buttons**: Secondary buttons complement primary actions by offering alternative or less critical choices. They often represent actions like "Cancel" or "Back" and are presented with less visual prominence than primary buttons but still enough to be easily noticed. Secondary buttons provide users with additional options without overshadowing the primary action.
  # - **Tertiary Buttons**: Tertiary buttons are used for less critical actions or less frequently accessed options. They are typically presented with a more subdued appearance, such as low-contrast buttons or links. Tertiary buttons help maintain a clean interface while still providing access to supplementary features or functions without cluttering the screen.
  #
  # In summary, the strategic use of primary, secondary, and tertiary buttons in UX design guides users effectively, highlighting key actions while offering alternative choices and additional options in an organized and accessible manner.
  #
  # @param color select { choices: [primary,green,dark] }
  # @param href text
  # @param disabled toggle
  # @!group Colors

  def primary(color: :primary, href: "#", disabled: false)
    render(Alveole::ButtonComponent.new(
      type: :primary,
      color: color,
      href: href,
      disabled: disabled
    )) do |_b|
      "Button"
    end
  end

  def secondary(color: :primary, href: "#", disabled: false)
    render(Alveole::ButtonComponent.new(
      type: :secondary,
      color: color,
      href: href,
      disabled: disabled
    )) do |_b|
      "Button"
    end
  end

  def tertiary(color: :primary, href: "#", disabled: false)
    render(Alveole::ButtonComponent.new(
      type: :tertiary,
      color: color,
      href: href,
      disabled: disabled
    )) do |_b|
      "Button"
    end
  end
  # @!endgroup
end
