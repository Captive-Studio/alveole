class InputComponent < ViewComponent::Base
  def initialize(type:, label: nil,
                 value: nil,
                 form: nil,
                 fieldname: nil,
                 collection: nil,
                 options: {})
    super

    @label = label
    @form = form
    @fieldname = fieldname
    @collection = collection
    @options = options
    @options[:value] = value if value
    @type = type
    @error = error?
    @error_message = error_message
  end

  private

  def error?
    return false unless @form.object.respond_to? :errors

    @error ||= @form.object.errors.include?(@fieldname.to_s.sub(/_id$/, ''))
  end

  def error_message
    return unless error?

    @error_message ||= @form.object.errors.messages_for(@fieldname.to_s.sub(/_id$/, '')).join(', ')
  end
end
