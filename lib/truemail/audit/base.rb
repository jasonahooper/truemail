# frozen_string_literal: true

module Truemail
  module Audit
    class Base < Truemail::Worker
      private

      def add_warning(message)
        result.warnings[self.class.name.split('::').last.downcase.to_sym] = message
      end

      def configuration
        result.configuration
      end

      def verifier_domain
        configuration.verifier_domain
      end
    end
  end
end
