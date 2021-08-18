class DefinitionComponentPreview < ViewComponent::Preview
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
    render(DefinitionComponent.new(label: nil, value: nil, obj: temp_obj, fieldname: :fieldname, options: {}))
  end

  def with_label
    temp_obj = TempObj.new
    render(DefinitionComponent.new(label: 'custom label', value: nil, obj: temp_obj, fieldname: :fieldname, options: {}))
  end

  def with_value
    temp_obj = TempObj.new
    render(DefinitionComponent.new(label: nil, value: 'custom value', obj: temp_obj, fieldname: :fieldname, options: {}))
  end

  def with_options
    temp_obj = TempObj.new
    render(DefinitionComponent.new(label: nil, value: nil, obj: temp_obj, fieldname: :fieldname, options: { style: 'color:red' }))
  end
end
