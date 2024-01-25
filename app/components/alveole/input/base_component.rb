class Alveole::Input::BaseComponent < ViewComponent::Base
  attr_reader :f

  def initialize(form, attribute, args = {})
    @f = form
    @attribute = attribute
    @args = args
  end

  def errors?
    f.object.errors[@attribute].present?
  end
end
