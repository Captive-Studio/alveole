class TableRowComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :table_row do |tablerow|
      tablerow.actions do
        tag.td('Example actions')
      end
      tag.td('Example content')
    end
  end

  def without_actions
    component :table_row do |_tablerow|
      tag.td('Example content')
    end
  end
end
