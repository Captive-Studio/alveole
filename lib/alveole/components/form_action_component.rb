class FormActionComponent < ViewComponent::Base
  def initialize(label:, submit_form: false, url: nil)
    super

    @label = label
    @submit_form = submit_form
    @url = url
  end
end
