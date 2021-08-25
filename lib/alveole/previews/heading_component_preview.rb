class HeadingComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :heading, label: 'Example heading'
  end

  def with_level
    component :heading, label: 'Example heading', level: 2
  end

  def with_sub
    component :heading, label: 'Example subheading', modifiers: [:sub]
  end
end
