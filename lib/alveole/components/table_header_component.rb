class TableHeaderComponent < ViewComponent::Base
  def initialize(label: nil, url: nil, obj: nil, fieldname: nil)
    super

    @label = label || ApplicationController.helpers.label_for(obj, fieldname)
    @url = url
  end
end
