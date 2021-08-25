class TableComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :table do |table|
      table.headers do
        tag.th('Example header')
      end
      tag.tr(tag.td('Example column'))
    end
  end
end
