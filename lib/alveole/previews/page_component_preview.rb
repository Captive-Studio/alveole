class PageComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :page do |page|
      page.actions do
        tag.span('Example actions')
      end
      page.header do
        tag.span('Example header')
      end
      tag.span('Example content')
    end
  end

  def without_actions
    component :page do |page|
      page.header do
        tag.span('Example header')
      end
      tag.span('Example content')
    end
  end

  def without_header
    component :page do |page|
      page.actions do
        tag.span('Example actions')
      end
      tag.span('Example content')
    end
  end
end
