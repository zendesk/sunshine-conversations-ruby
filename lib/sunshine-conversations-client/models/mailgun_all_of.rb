=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.5.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class MailgunAllOf
    # To configure a Mailgun integration, visit the API Keys tab in the settings page of the Mailgun dashboard and copy your active API key. Call the Create Integration endpoint with your API Key, a domain you have configured in Mailgun, and the incoming address you would like to use. Must have the same domain as the one specified in the domain parameter. 
    attr_accessor :type

    # The public API key of your Mailgun account.
    attr_accessor :api_key

    # The domain used to relay email. This domain must be configured and verified in your Mailgun account.
    attr_accessor :domain

    # Sunshine Conversations will receive all emails sent to this address. It will also be used as the Reply-To address.
    attr_accessor :incoming_address

    # A boolean value indicating whether the unsubscribe link should be omitted from outgoing emails. When enabled, it is expected that the business is providing the user a way to unsubscribe by some other means. By default, the unsubscribe link will be included in all outgoing emails.
    attr_accessor :hide_unsubscribe_link

    # Email address to use as the From and Reply-To address if it must be different from incomingAddress. Only use this option if the address that you supply is configured to forward emails to the incomingAddress, otherwise user replies will be lost. You must also make sure that the domain is properly configured as a mail provider so as to not be flagged as spam by the user’s email client. May be unset with null.
    attr_accessor :from_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'api_key' => :'apiKey',
        :'domain' => :'domain',
        :'incoming_address' => :'incomingAddress',
        :'hide_unsubscribe_link' => :'hideUnsubscribeLink',
        :'from_address' => :'fromAddress'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'api_key' => :'String',
        :'domain' => :'String',
        :'incoming_address' => :'String',
        :'hide_unsubscribe_link' => :'Boolean',
        :'from_address' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'api_key',
        :'from_address'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::MailgunAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::MailgunAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'mailgun'
      end

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'incoming_address')
        self.incoming_address = attributes[:'incoming_address']
      end

      if attributes.key?(:'hide_unsubscribe_link')
        self.hide_unsubscribe_link = attributes[:'hide_unsubscribe_link']
      end

      if attributes.key?(:'from_address')
        self.from_address = attributes[:'from_address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @api_key.to_s.length < 1
        invalid_properties.push('invalid value for "api_key", the character length must be great than or equal to 1.')
      end

      if @domain.nil?
        invalid_properties.push('invalid value for "domain", domain cannot be nil.')
      end

      if @domain.to_s.length < 1
        invalid_properties.push('invalid value for "domain", the character length must be great than or equal to 1.')
      end

      if @incoming_address.nil?
        invalid_properties.push('invalid value for "incoming_address", incoming_address cannot be nil.')
      end

      if @incoming_address.to_s.length < 1
        invalid_properties.push('invalid value for "incoming_address", the character length must be great than or equal to 1.')
      end

      if !@from_address.nil? && @from_address.to_s.length < 1
        invalid_properties.push('invalid value for "from_address", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @api_key.to_s.length < 1
      return false if @domain.nil?
      return false if @domain.to_s.length < 1
      return false if @incoming_address.nil?
      return false if @incoming_address.to_s.length < 1
      return false if !@from_address.nil? && @from_address.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] api_key Value to be assigned
    def api_key=(api_key)
      if api_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "api_key", the character length must be great than or equal to 1.'
      end

      @api_key = api_key
    end

    # Custom attribute writer method with validation
    # @param [Object] domain Value to be assigned
    def domain=(domain)
      if domain.nil?
        fail ArgumentError, 'domain cannot be nil'
      end

      if domain.to_s.length < 1
        fail ArgumentError, 'invalid value for "domain", the character length must be great than or equal to 1.'
      end

      @domain = domain
    end

    # Custom attribute writer method with validation
    # @param [Object] incoming_address Value to be assigned
    def incoming_address=(incoming_address)
      if incoming_address.nil?
        fail ArgumentError, 'incoming_address cannot be nil'
      end

      if incoming_address.to_s.length < 1
        fail ArgumentError, 'invalid value for "incoming_address", the character length must be great than or equal to 1.'
      end

      @incoming_address = incoming_address
    end

    # Custom attribute writer method with validation
    # @param [Object] from_address Value to be assigned
    def from_address=(from_address)
      if !from_address.nil? && from_address.to_s.length < 1
        fail ArgumentError, 'invalid value for "from_address", the character length must be great than or equal to 1.'
      end

      @from_address = from_address
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          api_key == o.api_key &&
          domain == o.domain &&
          incoming_address == o.incoming_address &&
          hide_unsubscribe_link == o.hide_unsubscribe_link &&
          from_address == o.from_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, api_key, domain, incoming_address, hide_unsubscribe_link, from_address].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        SunshineConversationsClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
