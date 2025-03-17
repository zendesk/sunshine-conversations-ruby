=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class Ios < Integration
    # To configure an ios integration, call the create integration endpoint with a base64 encoded Apple Push Notification certificate from the [Apple Developer Portal](https://developer.apple.com/). 
    attr_accessor :type

    # The binary of your APN certificate base64 encoded. To base64 encode your certificate you can use this command in the terminal: `openssl base64 -in YOUR_CERTIFICATE.p12 | tr -d '\\n'` 
    attr_accessor :certificate

    # The password for your APN certificate.
    attr_accessor :password

    # The APN environment to connect to (Production, if true, or Sandbox). Defaults to value inferred from certificate if not specified.
    attr_accessor :production

    # Use the unread count of the conversation as the application badge.
    attr_accessor :auto_update_badge

    # Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where `settings.multiConvoEnabled` is set to `true`*. 
    attr_accessor :can_user_see_conversation_list

    # Allows users to create more than one conversation on the iOS integration.
    attr_accessor :can_user_create_more_conversations

    # Allows users to send attachments. By default, the setting is set to true. This setting can only be configured in Zendesk Admin Center. 
    attr_accessor :attachments_enabled

    # The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to <a href=\"https://docs.smooch.io/guide/switchboard/#per-channel-default-responder\">Per-channel default responder</a> guide. 
    attr_accessor :default_responder_id

    attr_accessor :default_responder

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'certificate' => :'certificate',
        :'password' => :'password',
        :'production' => :'production',
        :'auto_update_badge' => :'autoUpdateBadge',
        :'can_user_see_conversation_list' => :'canUserSeeConversationList',
        :'can_user_create_more_conversations' => :'canUserCreateMoreConversations',
        :'attachments_enabled' => :'attachmentsEnabled',
        :'default_responder_id' => :'defaultResponderId',
        :'default_responder' => :'defaultResponder'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'certificate' => :'String',
        :'password' => :'String',
        :'production' => :'Boolean',
        :'auto_update_badge' => :'Boolean',
        :'can_user_see_conversation_list' => :'Boolean',
        :'can_user_create_more_conversations' => :'Boolean',
        :'attachments_enabled' => :'Boolean',
        :'default_responder_id' => :'String',
        :'default_responder' => :'DefaultResponderDefaultResponder'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'certificate',
        :'default_responder_id',
        :'default_responder'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'DefaultResponder',
      :'DefaultResponderId',
      :'Integration',
      :'IosAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::Ios` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::Ios`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'ios'
      end

      if attributes.key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'production')
        self.production = attributes[:'production']
      end

      if attributes.key?(:'auto_update_badge')
        self.auto_update_badge = attributes[:'auto_update_badge']
      end

      if attributes.key?(:'can_user_see_conversation_list')
        self.can_user_see_conversation_list = attributes[:'can_user_see_conversation_list']
      end

      if attributes.key?(:'can_user_create_more_conversations')
        self.can_user_create_more_conversations = attributes[:'can_user_create_more_conversations']
      end

      if attributes.key?(:'attachments_enabled')
        self.attachments_enabled = attributes[:'attachments_enabled']
      end

      if attributes.key?(:'default_responder_id')
        self.default_responder_id = attributes[:'default_responder_id']
      end

      if attributes.key?(:'default_responder')
        self.default_responder = attributes[:'default_responder']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if !@certificate.nil? && @certificate.to_s.length < 1
        invalid_properties.push('invalid value for "certificate", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@certificate.nil? && @certificate.to_s.length < 1
      true && super
    end

    # Custom attribute writer method with validation
    # @param [Object] certificate Value to be assigned
    def certificate=(certificate)
      if !certificate.nil? && certificate.to_s.length < 1
        fail ArgumentError, 'invalid value for "certificate", the character length must be great than or equal to 1.'
      end

      @certificate = certificate
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          certificate == o.certificate &&
          password == o.password &&
          production == o.production &&
          auto_update_badge == o.auto_update_badge &&
          can_user_see_conversation_list == o.can_user_see_conversation_list &&
          can_user_create_more_conversations == o.can_user_create_more_conversations &&
          attachments_enabled == o.attachments_enabled &&
          default_responder_id == o.default_responder_id &&
          default_responder == o.default_responder && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, certificate, password, production, auto_update_badge, can_user_see_conversation_list, can_user_create_more_conversations, attachments_enabled, default_responder_id, default_responder].hash
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
      super(attributes)
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
      hash = super
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
