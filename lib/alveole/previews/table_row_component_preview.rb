class TableRowComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :table_row do
      tag.td('Example content')
    end
  end
end
