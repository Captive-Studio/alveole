class SidebarComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(SidebarComponent.new) do |sidebar|
      sidebar.top do
        tag.span('Example top')
      end
      sidebar.bottom do
        tag.span('Example bottom')
      end
      tag.span('Example content')
    end
  end

  def without_top
    render(SidebarComponent.new) do |sidebar|
      sidebar.bottom do
        tag.span('Example bottom')
      end
      tag.span('Example content')
    end
  end

  def without_bottom
    render(SidebarComponent.new) do |sidebar|
      sidebar.top do
        tag.span('Example top')
      end
      tag.span('Example content')
    end
  end
end
