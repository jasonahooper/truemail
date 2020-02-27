# frozen_string_literal: true

module Truemail
  class Auditor
    Result = Struct.new(:warnings, :configuration) do
      def initialize(warnings: nil, configuration: nil)
        super(warnings || {}, configuration)
      end
    end

    attr_reader :result

    def initialize(configuration:)
      @result = Truemail::Auditor::Result.new(configuration: configuration)
    end

    def run
      Truemail::Audit::Ptr.check(result)
      self
    end
  end
end
