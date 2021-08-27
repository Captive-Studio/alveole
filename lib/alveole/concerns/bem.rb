module Alveole
  module Concerns
    module Bem
      extend ActiveSupport::Concern

      included do
        const_set('COMPONENT_NAME', name.gsub('Component', '').underscore.dasherize)
      end

      def modifiers=(values)
        @bem_classes ||= []
        @modifiers = values & (self.class::MODIFIERS || [])

        @modifiers.each do |modifier|
          @bem_classes << "#{self.class::COMPONENT_NAME}--#{modifier.to_s.dasherize}"
        end
      end
    end
  end
end
