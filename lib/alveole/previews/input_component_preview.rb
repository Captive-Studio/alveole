class InputComponentPreview < ViewComponent::Preview
  class TempObj
    attr_accessor :fieldname

    def initialize(fieldname = 'Example value')
      @fieldname = fieldname
    end

    def self.human_attribute_name(_)
      'label'
    end
  end

  layout false

  def default
    raise 'not implemented yet'
    # temp_obj = TempObj.new

    # ActionView::Helpers.form_for temp_obj do |form_builder|
    # # form_builder = ActionView::Helpers::FormBuilder.new(:temp_obj, temp_obj, {}, {})

    #   render(InputComponent.new(type: :text,
    #                             label: nil,
    #                             value: nil,
    #                             form: form_builder,
    #                             fieldname: :fieldname,
    #                             collection: nil,
    #                             options: {}))
    # end
  end
end
