=begin
#Sunshine Conversations API

The version of the OpenAPI document: 14.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class ConversationType
    PERSONAL = "personal".freeze
    SDK_GROUP = "sdkGroup".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ConversationType.constants.select { |c| ConversationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ConversationType" if constantValues.empty?
      value
    end
  end
end
