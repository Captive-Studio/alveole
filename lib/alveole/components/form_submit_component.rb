class FormSubmitComponent < ViewComponent::Base
  def initialize(label:)
    super

    @label = label
  end
end
