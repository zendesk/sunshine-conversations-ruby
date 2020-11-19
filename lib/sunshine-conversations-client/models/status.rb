=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.3.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class Status
    INACTIVE = "inactive".freeze
    ACTIVE = "active".freeze
    ERROR = "error".freeze

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
      constantValues = Status.constants.select { |c| Status::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Status" if constantValues.empty?
      value
    end
  end
end