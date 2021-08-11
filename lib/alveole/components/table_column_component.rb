class TableColumnComponent < ViewComponent::Base
  def initialize(value: nil, obj: nil, fieldname: nil, url: nil, options: {})
    super

    @obj = obj
    @fieldname = fieldname
    @value = value || obj&.send(fieldname)
    @value = ApplicationController.helpers.format_value(@value, options)
    @url = url
  end
end
