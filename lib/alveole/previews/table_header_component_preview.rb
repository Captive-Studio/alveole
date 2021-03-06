class TableHeaderComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  class TempObj
    def self.human_attribute_name(_)
      'label'
    end

    def fieldname
      'value'
    end
  end

  layout false

  def default
    temp_obj = TempObj.new
    component :table_header, label: nil, url: nil, obj: temp_obj, fieldname: :fieldname
  end

  def with_url
    temp_obj = TempObj.new
    component :table_header, label: nil, url: 'example/url', obj: temp_obj, fieldname: :fieldname
  end

  def with_custom_label
    component :table_header, label: 'Custom label', url: nil, obj: nil, fieldname: nil
  end
end
