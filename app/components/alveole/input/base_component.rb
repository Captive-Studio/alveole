class Alveole::Input::BaseComponent < ViewComponent::Base
  attr_reader :f

  def initialize(form, attribute, args = {})
    @f = form
    @attribute = attribute
    @args = args
    resource_name = form.object.class.to_s.underscore
    @id = "#{resource_name}_#{attribute.to_s.underscore}"
    @required = args[:required].presence || false
  end

  def errors?
    f.object.errors[@attribute].present?
  end
end
