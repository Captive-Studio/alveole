class TableComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(TableComponent.new) do |table|
      table.headers do
        tag.th('Example header')
      end
      tag.tr(tag.td('Example column'))
    end
  end
end
