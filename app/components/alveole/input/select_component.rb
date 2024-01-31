# frozen_string_literal: true

class Alveole::Input::SelectComponent < Alveole::Input::BaseComponent
  def collection
    [
      ["US", "United States"],
      ["CA", "Canada"],
      ["FR", "France"],
      ["DE", "Germany"]
    ]
  end
end
