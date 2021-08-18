class InputComponent < ViewComponent::Base
  include Alveole::Concerns::Bem

  MODIFIERS = %i[disabled error].freeze

  def initialize(type: nil, label: nil,
                 value: nil,
                 form: nil,
                 fieldname: nil,
                 collection: nil,
                 modifiers: [],
                 options: {})
    super

    @label = label
    @form = form
    @fieldname = fieldname
    @collection = collection
    @options = options
    @options[:value] = value if value
    @type = type || :text
    @error_message = error_message

    modifiers << :error if error?
    modifiers << :disabled if options[:disabled]
    self.modifiers = modifiers
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
