class DefinitionComponent < ViewComponent::Base
  def initialize(label: nil, value: nil, obj: nil, fieldname: nil, options: {})
    super

    @obj = obj
    @fieldname = fieldname
    @value = value || obj&.send(fieldname)
    @value = ApplicationController.helpers.format_value(@value, options)
    @value = '---' if @value.blank?
    @label = label || ApplicationController.helpers.label_for(obj, fieldname)
    @options = options
  end
end
