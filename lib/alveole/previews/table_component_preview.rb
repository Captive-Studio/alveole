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

  def with_footers
    component :table do |table|
      table.headers do
        tag.th('Example header')
      end
      table.footers do
        tag.td('Example footer')
      end
      tag.tr(tag.td('Example column'))
    end
  end
end
