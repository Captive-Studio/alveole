class SidebarComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :sidebar do |sidebar|
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
    component :sidebar do |sidebar|
      sidebar.bottom do
        tag.span('Example bottom')
      end
      tag.span('Example content')
    end
  end

  def without_bottom
    component :sidebar do |sidebar|
      sidebar.top do
        tag.span('Example top')
      end
      tag.span('Example content')
    end
  end
end
