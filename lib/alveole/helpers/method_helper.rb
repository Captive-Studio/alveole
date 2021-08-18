module Alveole
  module Helper
    module ComponentHelper
      def component(name, *args, &block)
        component_args = {}
        component_args = args.pop if args[-1].is_a? Hash
        component_args[:modifiers] = args unless args.empty?
        component_class = "#{name}_component".camelize.constantize

        render(component_class.new(**component_args), &block)
      end

      def format_value(value, options = {})
        return if value.nil?

        v = value
        v = I18n.l(v.to_date, format: :short) if options[:date]
        v = I18n.l(v.to_datetime, format: :short) if options[:time]

        v
      end

      def label_for(obj, fieldname)
        return unless obj && fieldname

        return obj.class.human_attribute_name(fieldname) if obj.class.respond_to?(:human_attribute_name)
        return obj.klass.human_attribute_name(fieldname) if obj.respond_to?(:klass) && obj.klass.respond_to?(:human_attribute_name)
      end
    end
  end
end
