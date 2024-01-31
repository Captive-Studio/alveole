# frozen_string_literal: true

class Alveole::MegaMenuComponent < ViewComponent::Base
  renders_one :logo
  renders_many :actions
end
