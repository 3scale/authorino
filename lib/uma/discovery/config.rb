# frozen_string_literal: true

module UMA
  module Discovery
    class Config
      def self.discover!(identifier, cache_options = {})
        uri = URI.parse(identifier)
        Resource.new(uri).discover!(cache_options).tap do |response|
          response.expected_issuer = identifier
          response.validate!
        end
      rescue SWD::Exception, ValidationFailed => e
        raise DiscoveryFailed.new(e.message)
      end
    end
  end
end

require 'uma/discovery/config/resource'
require 'uma/discovery/config/response'
