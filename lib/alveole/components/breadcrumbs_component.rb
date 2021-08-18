class BreadcrumbsComponent < ViewComponent::Base
  def call
    tag.div(class: 'breadcrumbs') do
      content
    end
  end
end
