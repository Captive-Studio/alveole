module Alveole
  module Helper
    module ComponentHelper
      def component(name, args = {}, &block)
        component_class = "#{name}_component".camelize.constantize
        render(component_class.new(**args), &block)
      end

      def format_value(value, options = {})
        return if value.nil?

        v = value
        v = I18n.l(v.to_date, format: :short) if options[:date]
        v = I18n.l(v.to_datetime, format: :short) if options[:time]

        v
      end
    end
  end
end
