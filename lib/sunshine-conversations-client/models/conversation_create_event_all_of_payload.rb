=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  # The payload of the event. The contents of this object depend on the type of event.
  class ConversationCreateEventAllOfPayload
    # The conversation that was created.
    attr_accessor :conversation

    # The reason why the conversation was created, if applicable. * `linkRequest` - The conversation was created in order to generate a link request to transfer the user to a different channel. * `message` - The conversation was created because a message was sent. * `none` - The conversation was not created for a specific purpose. Used primarily when a conversation is created via the Create Conversation API. * `notification` - The conversation was created by a call to the Notification API. * `prechatCapture` - The conversation was created because the user completed a prechat capture form in the Web Messenger. * `startConversation` - The conversation was created because of a call to the startConversation API on one of the SDK integrations, or a start conversation event was triggered from a messaging channel. * `proactiveMessaging` - The conversation was created because the user interacted with a campaign. 
    attr_accessor :creation_reason

    # The source of the creation.
    attr_accessor :source

    # The user associated with the conversation. Only present if the created conversation was of type personal. For sdkGroup conversations, the list of participants can be fetched using the List Participants API, if required.
    attr_accessor :user

    # Referral information, if applicable.
    attr_accessor :referral

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'conversation' => :'conversation',
        :'creation_reason' => :'creationReason',
        :'source' => :'source',
        :'user' => :'user',
        :'referral' => :'referral'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'conversation' => :'ConversationTruncated',
        :'creation_reason' => :'String',
        :'source' => :'SourceWithCampaignWebhook',
        :'user' => :'User',
        :'referral' => :'Referral'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'user',
        :'referral'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::ConversationCreateEventAllOfPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::ConversationCreateEventAllOfPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'conversation')
        self.conversation = attributes[:'conversation']
      end

      if attributes.key?(:'creation_reason')
        self.creation_reason = attributes[:'creation_reason']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'referral')
        self.referral = attributes[:'referral']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      creation_reason_validator = EnumAttributeValidator.new('String', ["linkRequest", "message", "none", "notification", "prechatCapture", "startConversation", "proactiveMessaging"])
      return false unless creation_reason_validator.valid?(@creation_reason)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] creation_reason Object to be assigned
    def creation_reason=(creation_reason)
      validator = EnumAttributeValidator.new('String', ["linkRequest", "message", "none", "notification", "prechatCapture", "startConversation", "proactiveMessaging"])
      unless validator.valid?(creation_reason)
        fail ArgumentError, "invalid value for \"creation_reason\", must be one of #{validator.allowable_values}."
      end
      @creation_reason = creation_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          conversation == o.conversation &&
          creation_reason == o.creation_reason &&
          source == o.source &&
          user == o.user &&
          referral == o.referral
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [conversation, creation_reason, source, user, referral].hash
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
