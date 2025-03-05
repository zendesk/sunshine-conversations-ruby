=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class Messenger < Integration
    # Facebook Messenger Setup steps: - Take note of your Facebook app ID and secret (apps can be created at developer.facebook.com); - The Facebook app must have been submitted to Meta for app review with the “pages_manage_metadata” (to retrieve Page Access Tokens for the Pages, apps that the app user administers and set a webhook) and “pages_messaging” (to send messages) permissions. - In order to integrate a Facebook Messenger app you must acquire a Page Access Token from your user. Once you have acquired a page access token from your user, call the Create Integration endpoint with your app secret and ID and the user’s page access token. 
    attr_accessor :type

    # A Facebook Page Access Token.
    attr_accessor :page_access_token

    # A Facebook App ID.
    attr_accessor :app_id

    # A Facebook App Secret.
    attr_accessor :app_secret

    # A Facebook page ID.
    attr_accessor :page_id

    # A Facebook page name.
    attr_accessor :page_name

    # The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to <a href=\"https://docs.smooch.io/guide/switchboard/#per-channel-default-responder\">Per-channel default responder</a> guide. 
    attr_accessor :default_responder_id

    attr_accessor :default_responder

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'page_access_token' => :'pageAccessToken',
        :'app_id' => :'appId',
        :'app_secret' => :'appSecret',
        :'page_id' => :'pageId',
        :'page_name' => :'pageName',
        :'default_responder_id' => :'defaultResponderId',
        :'default_responder' => :'defaultResponder'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'page_access_token' => :'String',
        :'app_id' => :'String',
        :'app_secret' => :'String',
        :'page_id' => :'Float',
        :'page_name' => :'String',
        :'default_responder_id' => :'String',
        :'default_responder' => :'DefaultResponderDefaultResponder'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'page_access_token',
        :'app_secret',
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
      :'MessengerAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::Messenger` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::Messenger`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'messenger'
      end

      if attributes.key?(:'page_access_token')
        self.page_access_token = attributes[:'page_access_token']
      end

      if attributes.key?(:'app_id')
        self.app_id = attributes[:'app_id']
      end

      if attributes.key?(:'app_secret')
        self.app_secret = attributes[:'app_secret']
      end

      if attributes.key?(:'page_id')
        self.page_id = attributes[:'page_id']
      end

      if attributes.key?(:'page_name')
        self.page_name = attributes[:'page_name']
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
      if @app_id.nil?
        invalid_properties.push('invalid value for "app_id", app_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @app_id.nil?
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          page_access_token == o.page_access_token &&
          app_id == o.app_id &&
          app_secret == o.app_secret &&
          page_id == o.page_id &&
          page_name == o.page_name &&
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
      [type, page_access_token, app_id, app_secret, page_id, page_name, default_responder_id, default_responder].hash
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
