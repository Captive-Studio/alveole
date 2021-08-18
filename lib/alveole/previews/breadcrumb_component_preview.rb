class BreadcrumbComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(BreadcrumbComponent.new(label: 'Example Breadcrumb', url: '/example/url'))
  end

  def without_url
    render(BreadcrumbComponent.new(label: 'Example Breadcrumb'))
  end

  def breadcrumbs
    render(BreadcrumbsComponent.new)
  end
end
