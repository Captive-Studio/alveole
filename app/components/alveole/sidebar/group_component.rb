# frozen_string_literal: true

class Alveole::Sidebar::GroupComponent < ViewComponent::Base

  renders_many :items, types: {
    item: {
      renders: lambda { |**system_arguments, &block|
        Alveole::Sidebar::ItemComponent.new(
          **system_arguments,
          &block
        )
      },

      as: :item
    },

    divider: {
      renders: Alveole::Sidebar::DividerComponent,
      as: :divider
    },

    group: {
      renders: lambda { |**system_arguments, &block|
        Alveole::Sidebar::GroupComponent.new(
          **system_arguments,
          &block
        )
      },

      as: :group
    }
  }

  def initialize(title:)
    @title = title
  end
end
