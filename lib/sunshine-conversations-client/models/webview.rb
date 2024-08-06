=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.7.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  # When a webview actions is clicked/tapped, the provided URI will be loaded in a webview. Channels that do not support webviews will open the fallback URI instead.
  class Webview
    # The type of action.
    attr_accessor :type

    # The webview URI. This is the URI that will open in the webview when clicking the button.
    attr_accessor :uri

    # The button text.
    attr_accessor :text

    # Boolean value indicating whether the action is the default action for a message item in Facebook Messenger.
    attr_accessor :default

    # Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size. 
    attr_accessor :metadata

    attr_accessor :extra_channel_options

    # The size to display a webview. Used for actions of type webview.
    attr_accessor :size

    # The fallback uri for channels that don’t support webviews. Used for actions of type webview.
    attr_accessor :fallback

    # Boolean value indicating if the webview should open automatically. Only one action per message can be set to true. Currently only supported on the Web Messenger.
    attr_accessor :open_on_receive

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
        :'type' => :'type',
        :'uri' => :'uri',
        :'text' => :'text',
        :'default' => :'default',
        :'metadata' => :'metadata',
        :'extra_channel_options' => :'extraChannelOptions',
        :'size' => :'size',
        :'fallback' => :'fallback',
        :'open_on_receive' => :'openOnReceive'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'uri' => :'String',
        :'text' => :'String',
        :'default' => :'Boolean',
        :'metadata' => :'Object',
        :'extra_channel_options' => :'ExtraChannelOptions',
        :'size' => :'String',
        :'fallback' => :'String',
        :'open_on_receive' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'metadata',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::Webview` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::Webview`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'default')
        self.default = attributes[:'default']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'extra_channel_options')
        self.extra_channel_options = attributes[:'extra_channel_options']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'fallback')
        self.fallback = attributes[:'fallback']
      end

      if attributes.key?(:'open_on_receive')
        self.open_on_receive = attributes[:'open_on_receive']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @uri.nil?
        invalid_properties.push('invalid value for "uri", uri cannot be nil.')
      end

      if @text.nil?
        invalid_properties.push('invalid value for "text", text cannot be nil.')
      end

      if @fallback.nil?
        invalid_properties.push('invalid value for "fallback", fallback cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @uri.nil?
      return false if @text.nil?
      size_validator = EnumAttributeValidator.new('String', ["compact", "tall", "full"])
      return false unless size_validator.valid?(@size)
      return false if @fallback.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] size Object to be assigned
    def size=(size)
      validator = EnumAttributeValidator.new('String', ["compact", "tall", "full"])
      unless validator.valid?(size)
        fail ArgumentError, "invalid value for \"size\", must be one of #{validator.allowable_values}."
      end
      @size = size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          uri == o.uri &&
          text == o.text &&
          default == o.default &&
          metadata == o.metadata &&
          extra_channel_options == o.extra_channel_options &&
          size == o.size &&
          fallback == o.fallback &&
          open_on_receive == o.open_on_receive
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, uri, text, default, metadata, extra_channel_options, size, fallback, open_on_receive].hash
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
