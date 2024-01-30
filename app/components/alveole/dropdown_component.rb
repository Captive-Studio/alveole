# frozen_string_literal: true

class Alveole::DropdownComponent < ViewComponent::Base
  # renders_many :items, types: {
  #   item: {
  #     renders: lambda { |**system_arguments, &block|
  #       Alveole::Sidebar::ItemComponent.new(
  #         **system_arguments,
  #         &block
  #       )
  #     },

  #     as: :item
  #   },

  #   divider: {
  #     renders: Alveole::Sidebar::DividerComponent,
  #     as: :divider
  #   }
  # }
end
