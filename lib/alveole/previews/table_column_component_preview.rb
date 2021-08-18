class TableColumnComponentPreview < ViewComponent::Preview
  class TempObj
    attr_accessor :fieldname

    def initialize(fieldname = 'Example value')
      @fieldname = fieldname
    end
  end

  layout false

  def default
    temp_obj = TempObj.new
    render(TableColumnComponent.new(value: nil, obj: temp_obj, fieldname: :fieldname, url: nil, options: {}))
  end

  def with_url
    temp_obj = TempObj.new
    render(TableColumnComponent.new(value: nil, obj: temp_obj, fieldname: :fieldname, url: 'example/url', options: {}))
  end

  def with_date
    temp_obj = TempObj.new(Time.zone.today)
    render(TableColumnComponent.new(value: nil, obj: temp_obj, fieldname: :fieldname, url: 'example/url', options: { date: true }))
  end

  def with_time
    temp_obj = TempObj.new(Time.zone.now)
    render(TableColumnComponent.new(value: nil, obj: temp_obj, fieldname: :fieldname, url: 'example/url', options: { time: true }))
  end

  def with_custom_value
    temp_obj = TempObj.new
    render(TableColumnComponent.new(value: 'custom value', obj: temp_obj, fieldname: :fieldname, url: nil, options: {}))
  end
end
