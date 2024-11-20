=begin
#Sunshine Conversations API

The version of the OpenAPI document: 13.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class ImageMessage
    # The type of message.
    attr_accessor :type

    # The URL for media, such as an image, attached to the message.
    attr_accessor :media_url

    # The type of media.
    attr_accessor :media_type

    # The size of the media in bytes.
    attr_accessor :media_size

    # An optional description of the image for accessibility purposes. The field will be saved by default with the file name as the value.
    attr_accessor :alt_text

    # The text content of the message. Optional only if actions are provided.
    attr_accessor :text

    # Array of message actions.
    attr_accessor :actions

    # An identifier used by Sunshine Conversations for internal purposes.
    attr_accessor :attachment_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'media_url' => :'mediaUrl',
        :'media_type' => :'mediaType',
        :'media_size' => :'mediaSize',
        :'alt_text' => :'altText',
        :'text' => :'text',
        :'actions' => :'actions',
        :'attachment_id' => :'attachmentId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'media_url' => :'String',
        :'media_type' => :'String',
        :'media_size' => :'Float',
        :'alt_text' => :'String',
        :'text' => :'String',
        :'actions' => :'Array<Action>',
        :'attachment_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::ImageMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::ImageMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'image'
      end

      if attributes.key?(:'media_url')
        self.media_url = attributes[:'media_url']
      end

      if attributes.key?(:'media_type')
        self.media_type = attributes[:'media_type']
      end

      if attributes.key?(:'media_size')
        self.media_size = attributes[:'media_size']
      end

      if attributes.key?(:'alt_text')
        self.alt_text = attributes[:'alt_text']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'actions')
      end

      if attributes.key?(:'attachment_id')
        self.attachment_id = attributes[:'attachment_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @media_url.nil?
        invalid_properties.push('invalid value for "media_url", media_url cannot be nil.')
      end

      if !@media_type.nil? && @media_type.to_s.length > 128
        invalid_properties.push('invalid value for "media_type", the character length must be smaller than or equal to 128.')
      end

      if !@alt_text.nil? && @alt_text.to_s.length > 128
        invalid_properties.push('invalid value for "alt_text", the character length must be smaller than or equal to 128.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @media_url.nil?
      return false if !@media_type.nil? && @media_type.to_s.length > 128
      return false if !@alt_text.nil? && @alt_text.to_s.length > 128
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] media_type Value to be assigned
    def media_type=(media_type)
      if !media_type.nil? && media_type.to_s.length > 128
        fail ArgumentError, 'invalid value for "media_type", the character length must be smaller than or equal to 128.'
      end

      @media_type = media_type
    end

    # Custom attribute writer method with validation
    # @param [Object] alt_text Value to be assigned
    def alt_text=(alt_text)
      if !alt_text.nil? && alt_text.to_s.length > 128
        fail ArgumentError, 'invalid value for "alt_text", the character length must be smaller than or equal to 128.'
      end

      @alt_text = alt_text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          media_url == o.media_url &&
          media_type == o.media_type &&
          media_size == o.media_size &&
          alt_text == o.alt_text &&
          text == o.text &&
          actions == o.actions &&
          attachment_id == o.attachment_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, media_url, media_type, media_size, alt_text, text, actions, attachment_id].hash
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
