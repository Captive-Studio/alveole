class TableRowComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(TableRowComponent.new) do |tablerow|
      tablerow.actions do
        tag.td('Example actions')
      end
      tag.td('Example content')
    end
  end

  def without_actions
    render(TableRowComponent.new) do |_tablerow|
      tag.td('Example content')
    end
  end
end
