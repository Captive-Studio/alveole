class PageComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(PageComponent.new) do |page|
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
    render(PageComponent.new) do |page|
      page.header do
        tag.span('Example header')
      end
      tag.span('Example content')
    end
  end

  def without_header
    render(PageComponent.new) do |page|
      page.actions do
        tag.span('Example actions')
      end
      tag.span('Example content')
    end
  end
end
