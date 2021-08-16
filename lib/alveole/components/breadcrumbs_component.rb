class BreadcrumbsComponent < ViewComponent::Base
  def call
    content_tag('div', class:'breadcrumbs') do
      content
    end
  end
end
