class BadgeComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :badge, label: 'example de badge'
  end

  def with_options
    component :badge, label: 'example de badge', options: { data: 'example-option' }
  end
end
