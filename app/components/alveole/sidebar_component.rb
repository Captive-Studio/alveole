# frozen_string_literal: true

class Alveole::SidebarComponent < ViewComponent::Base
  renders_one :heading, Alveole::Sidebar::HeadingComponent

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


  def initialize(logo: nil, logo_url: nil)
    @logo = logo
    @logo_url = logo_url
  end
end
