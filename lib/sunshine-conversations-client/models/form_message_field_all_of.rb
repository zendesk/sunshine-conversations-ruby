=begin
#Sunshine Conversations API

The version of the OpenAPI document: 14.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  # Properties that can be expected to receive inside a form message field. 
  class FormMessageFieldAllOf
    # Placeholder text for the field. Form message only.
    attr_accessor :placeholder

    # The minimum allowed length for the response for a field of type text. Form message only.
    attr_accessor :min_size

    # The maximum allowed length for the response for a field of type text. Form message only.
    attr_accessor :max_size

    # Array of objects representing options for a field of type select.
    attr_accessor :options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'placeholder' => :'placeholder',
        :'min_size' => :'minSize',
        :'max_size' => :'maxSize',
        :'options' => :'options'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'placeholder' => :'String',
        :'min_size' => :'Integer',
        :'max_size' => :'Integer',
        :'options' => :'Array<Object>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::FormMessageFieldAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::FormMessageFieldAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'placeholder')
        self.placeholder = attributes[:'placeholder']
      end

      if attributes.key?(:'min_size')
        self.min_size = attributes[:'min_size']
      else
        self.min_size = 1
      end

      if attributes.key?(:'max_size')
        self.max_size = attributes[:'max_size']
      else
        self.max_size = 128
      end

      if attributes.key?(:'options')
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@placeholder.nil? && @placeholder.to_s.length > 128
        invalid_properties.push('invalid value for "placeholder", the character length must be smaller than or equal to 128.')
      end

      if !@placeholder.nil? && @placeholder.to_s.length < 1
        invalid_properties.push('invalid value for "placeholder", the character length must be great than or equal to 1.')
      end

      if !@min_size.nil? && @min_size > 256
        invalid_properties.push('invalid value for "min_size", must be smaller than or equal to 256.')
      end

      if !@min_size.nil? && @min_size < 1
        invalid_properties.push('invalid value for "min_size", must be greater than or equal to 1.')
      end

      if !@max_size.nil? && @max_size > 256
        invalid_properties.push('invalid value for "max_size", must be smaller than or equal to 256.')
      end

      if !@max_size.nil? && @max_size < 1
        invalid_properties.push('invalid value for "max_size", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@placeholder.nil? && @placeholder.to_s.length > 128
      return false if !@placeholder.nil? && @placeholder.to_s.length < 1
      return false if !@min_size.nil? && @min_size > 256
      return false if !@min_size.nil? && @min_size < 1
      return false if !@max_size.nil? && @max_size > 256
      return false if !@max_size.nil? && @max_size < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] placeholder Value to be assigned
    def placeholder=(placeholder)
      if !placeholder.nil? && placeholder.to_s.length > 128
        fail ArgumentError, 'invalid value for "placeholder", the character length must be smaller than or equal to 128.'
      end

      if !placeholder.nil? && placeholder.to_s.length < 1
        fail ArgumentError, 'invalid value for "placeholder", the character length must be great than or equal to 1.'
      end

      @placeholder = placeholder
    end

    # Custom attribute writer method with validation
    # @param [Object] min_size Value to be assigned
    def min_size=(min_size)
      if !min_size.nil? && min_size > 256
        fail ArgumentError, 'invalid value for "min_size", must be smaller than or equal to 256.'
      end

      if !min_size.nil? && min_size < 1
        fail ArgumentError, 'invalid value for "min_size", must be greater than or equal to 1.'
      end

      @min_size = min_size
    end

    # Custom attribute writer method with validation
    # @param [Object] max_size Value to be assigned
    def max_size=(max_size)
      if !max_size.nil? && max_size > 256
        fail ArgumentError, 'invalid value for "max_size", must be smaller than or equal to 256.'
      end

      if !max_size.nil? && max_size < 1
        fail ArgumentError, 'invalid value for "max_size", must be greater than or equal to 1.'
      end

      @max_size = max_size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          placeholder == o.placeholder &&
          min_size == o.min_size &&
          max_size == o.max_size &&
          options == o.options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [placeholder, min_size, max_size, options].hash
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
