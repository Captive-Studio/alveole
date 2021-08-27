class BreadcrumbComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :breadcrumb, label: 'Example Breadcrumb', url: '/example/url'
  end

  def without_url
    component :breadcrumb, label: 'Example Breadcrumb'
  end

  def breadcrumbs
    render(BreadcrumbsComponent.new)
  end
end
