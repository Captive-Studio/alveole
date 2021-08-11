class TableComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(TableComponent.new) do |table|
      table.headers do
        content_tag(:th, 'Example header')
      end
      content_tag(:tr, content_tag(:td, 'Example column'))
    end
  end
end
