=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class TextMessage
    # The type of message.
    attr_accessor :type

    # The text content of the message. Required unless `actions`, `htmlText` or `markdownText` is provided.
    attr_accessor :text

    # HTML text content of the message. Can be provided in place of `text`. Cannot be used with `markdownText`. If no `text` is provided, will be converted to `text` upon reception to be displayed on channels that do not support rich text. See [rich text](https://docs.smooch.io/guide/structured-messages/rich-text) documentation for more information.
    attr_accessor :html_text

    # Markdown text content of the message. Can be provided in place of `text`. Cannot be used with `htmlText`. Will be converted to `htmlText` upon reception. If converted `htmlText` exceeds 4096 characters, the message will be rejected. If no `text` is provided, will be converted to `text` upon reception to be displayed on channels that do not support rich text. See [rich text](https://docs.smooch.io/guide/structured-messages/rich-text) documentation for more information.
    attr_accessor :markdown_text

    # Array of message actions.
    attr_accessor :actions

    # The payload of a [reply button](https://docs.smooch.io/guide/structured-messages/#reply-buttons) response message.
    attr_accessor :payload

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'text' => :'text',
        :'html_text' => :'htmlText',
        :'markdown_text' => :'markdownText',
        :'actions' => :'actions',
        :'payload' => :'payload'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'text' => :'String',
        :'html_text' => :'String',
        :'markdown_text' => :'String',
        :'actions' => :'Array<Action>',
        :'payload' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::TextMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::TextMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'text'
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'html_text')
        self.html_text = attributes[:'html_text']
      end

      if attributes.key?(:'markdown_text')
        self.markdown_text = attributes[:'markdown_text']
      end

      if attributes.key?(:'actions')
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if !@text.nil? && @text.to_s.length > 4096
        invalid_properties.push('invalid value for "text", the character length must be smaller than or equal to 4096.')
      end

      if !@html_text.nil? && @html_text.to_s.length > 4096
        invalid_properties.push('invalid value for "html_text", the character length must be smaller than or equal to 4096.')
      end

      if !@markdown_text.nil? && @markdown_text.to_s.length > 4096
        invalid_properties.push('invalid value for "markdown_text", the character length must be smaller than or equal to 4096.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if !@text.nil? && @text.to_s.length > 4096
      return false if !@html_text.nil? && @html_text.to_s.length > 4096
      return false if !@markdown_text.nil? && @markdown_text.to_s.length > 4096
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] text Value to be assigned
    def text=(text)
      if !text.nil? && text.to_s.length > 4096
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 4096.'
      end

      @text = text
    end

    # Custom attribute writer method with validation
    # @param [Object] html_text Value to be assigned
    def html_text=(html_text)
      if !html_text.nil? && html_text.to_s.length > 4096
        fail ArgumentError, 'invalid value for "html_text", the character length must be smaller than or equal to 4096.'
      end

      @html_text = html_text
    end

    # Custom attribute writer method with validation
    # @param [Object] markdown_text Value to be assigned
    def markdown_text=(markdown_text)
      if !markdown_text.nil? && markdown_text.to_s.length > 4096
        fail ArgumentError, 'invalid value for "markdown_text", the character length must be smaller than or equal to 4096.'
      end

      @markdown_text = markdown_text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          text == o.text &&
          html_text == o.html_text &&
          markdown_text == o.markdown_text &&
          actions == o.actions &&
          payload == o.payload
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, text, html_text, markdown_text, actions, payload].hash
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
