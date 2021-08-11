class PageComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(PageComponent.new) do |page|
      page.actions do
        content_tag(:span, 'Example actions')
      end
      page.header do
        content_tag(:span, 'Example header')
      end
      content_tag(:span, 'Example content')
    end
  end

  def without_actions
    render(PageComponent.new) do |page|
      page.header do
        content_tag(:span, 'Example header')
      end
      content_tag(:span, 'Example content')
    end
  end

  def without_header
    render(PageComponent.new) do |page|
      page.actions do
        content_tag(:span, 'Example actions')
      end
      content_tag(:span, 'Example content')
    end
  end
end
