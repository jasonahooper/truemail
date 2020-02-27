# frozen_string_literal: true

module Truemail
  module Validate
    class Smtp
      RESPONSE_ATTRS = %i[port_opened connection helo mailfrom rcptto errors].freeze

      Response = Struct.new(*RESPONSE_ATTRS) do
        def initialize(port_opened: nil, connection: nil, helo: nil, mailfrom: nil, rcptto: nil, errors: nil)
          super(port_opened, connection, helo, mailfrom, rcptto, errors || {})
        end
      end
    end
  end
end
