=begin
#Sunshine Conversations API

The version of the OpenAPI document: 10.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class IntegrationUpdate
    # A human-friendly name used to identify the integration. `displayName` can be unset by changing it to `null`.
    attr_accessor :display_name

    # Your server key from the fcm console.
    attr_accessor :server_key

    # Your sender id from the fcm console.
    attr_accessor :sender_id

    # Allows users to create more than one conversation on the web messenger integration.
    attr_accessor :can_user_create_more_conversations

    # A Facebook Page Access Token.
    attr_accessor :page_access_token

    # The binary of your APN certificate base64 encoded.
    attr_accessor :certificate

    # The password for your APN certificate.
    attr_accessor :password

    # The APN environment to connect to (Production, if true, or Sandbox). Defaults to value inferred from certificate if not specified.
    attr_accessor :production

    # Use the unread count of the conversation as the application badge.
    attr_accessor :auto_update_badge

    # A boolean value indicating whether the unsubscribe link should be omitted from outgoing emails. When enabled, it is expected that the business is providing the user a way to unsubscribe by some other means. By default, the unsubscribe link will be included in all outgoing emails.
    attr_accessor :hide_unsubscribe_link

    # Email address to use as the From and Reply-To address if it must be different from incomingAddress. Only use this option if the address that you supply is configured to forward emails to the incomingAddress, otherwise user replies will be lost. You must also make sure that the domain is properly configured as a mail provider so as to not be flagged as spam by the user’s email client. May be unset with null.
    attr_accessor :from_address

    # This color will be used in the messenger header and the button or tab in idle state. Must be a 3 or 6-character hexadecimal color.
    attr_accessor :brand_color

    # When true, the introduction pane will be pinned at the top of the conversation instead of scrolling with it.
    attr_accessor :fixed_intro_pane

    # This color will be used for customer messages, quick replies and actions in the footer. Must be a 3 or 6-character hexadecimal color.
    attr_accessor :conversation_color

    # This color will be used for call-to-actions inside your messages. Must be a 3 or 6-character hexadecimal color.
    attr_accessor :action_color

    # Choose how the messenger will appear on your website. Must be either button or tab.
    attr_accessor :display_style

    # With the button style Web Messenger, you have the option of selecting your own button icon. The image must be at least 200 x 200 pixels and must be in either JPG, PNG, or GIF format.
    attr_accessor :button_icon_url

    # With the button style Web Messenger, you have the option of specifying the button width.
    attr_accessor :button_width

    # With the button style Web Messenger, you have the option of specifying the button height.
    attr_accessor :button_height

    # Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed.
    attr_accessor :integration_order

    # A custom business name for the Web Messenger.
    attr_accessor :business_name

    # A custom business icon url for the Web Messenger. The image must be at least 200 x 200 pixels and must be in either JPG, PNG, or GIF format.
    attr_accessor :business_icon_url

    # A background image url for the conversation. Image will be tiled to fit the window.
    attr_accessor :background_image_url

    # A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454: scheme \"://\" host [ \":\" port ], where scheme is http or https. 
    attr_accessor :origin_whitelist

    # Object whose properties can be set to specify the add-on’s options. See the [guide](https://docs.smooch.io/guide/web-messenger/#prechat-capture) to learn more about Prechat Capture.
    attr_accessor :prechat_capture

    # Specify a fallback language to use when sending WhatsApp message template using the short hand syntax. Defaults to en_US. See WhatsApp documentation for more info.
    attr_accessor :hsm_fallback_language

    # The business ID associated with the WhatsApp account. In combination with accountManagementAccessToken, it’s used for Message Template Reconstruction.
    attr_accessor :account_id

    # An access token associated with the accountId used to query the WhatsApp Account Management API. In combination with accountId, it’s used for Message Template Reconstruction.
    attr_accessor :account_management_access_token

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_name' => :'displayName',
        :'server_key' => :'serverKey',
        :'sender_id' => :'senderId',
        :'can_user_create_more_conversations' => :'canUserCreateMoreConversations',
        :'page_access_token' => :'pageAccessToken',
        :'certificate' => :'certificate',
        :'password' => :'password',
        :'production' => :'production',
        :'auto_update_badge' => :'autoUpdateBadge',
        :'hide_unsubscribe_link' => :'hideUnsubscribeLink',
        :'from_address' => :'fromAddress',
        :'brand_color' => :'brandColor',
        :'fixed_intro_pane' => :'fixedIntroPane',
        :'conversation_color' => :'conversationColor',
        :'action_color' => :'actionColor',
        :'display_style' => :'displayStyle',
        :'button_icon_url' => :'buttonIconUrl',
        :'button_width' => :'buttonWidth',
        :'button_height' => :'buttonHeight',
        :'integration_order' => :'integrationOrder',
        :'business_name' => :'businessName',
        :'business_icon_url' => :'businessIconUrl',
        :'background_image_url' => :'backgroundImageUrl',
        :'origin_whitelist' => :'originWhitelist',
        :'prechat_capture' => :'prechatCapture',
        :'hsm_fallback_language' => :'hsmFallbackLanguage',
        :'account_id' => :'accountId',
        :'account_management_access_token' => :'accountManagementAccessToken'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'display_name' => :'String',
        :'server_key' => :'String',
        :'sender_id' => :'String',
        :'can_user_create_more_conversations' => :'Boolean',
        :'page_access_token' => :'String',
        :'certificate' => :'String',
        :'password' => :'String',
        :'production' => :'Boolean',
        :'auto_update_badge' => :'Boolean',
        :'hide_unsubscribe_link' => :'Boolean',
        :'from_address' => :'String',
        :'brand_color' => :'String',
        :'fixed_intro_pane' => :'Boolean',
        :'conversation_color' => :'String',
        :'action_color' => :'String',
        :'display_style' => :'String',
        :'button_icon_url' => :'String',
        :'button_width' => :'String',
        :'button_height' => :'String',
        :'integration_order' => :'Array<String>',
        :'business_name' => :'String',
        :'business_icon_url' => :'String',
        :'background_image_url' => :'String',
        :'origin_whitelist' => :'Array<String>',
        :'prechat_capture' => :'PrechatCapture',
        :'hsm_fallback_language' => :'String',
        :'account_id' => :'String',
        :'account_management_access_token' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'display_name',
        :'server_key',
        :'sender_id',
        :'certificate',
        :'from_address',
        :'button_icon_url',
        :'integration_order',
        :'origin_whitelist',
        :'hsm_fallback_language',
        :'account_id',
        :'account_management_access_token'
      ])
    end

    # List of class defined in oneOf (OpenAPI v3)
    def self.openapi_one_of
      [
      :'AndroidUpdate',
      :'AppleUpdate',
      :'CustomUpdate',
      :'InstagramUpdate',
      :'IosUpdate',
      :'LineUpdate',
      :'MailgunUpdate',
      :'MessageBirdUpdate',
      :'MessengerUpdate',
      :'TelegramUpdate',
      :'TwilioUpdate',
      :'TwitterUpdate',
      :'ViberUpdate',
      :'WebUpdate',
      :'WhatsAppUpdate'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::IntegrationUpdate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::IntegrationUpdate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'server_key')
        self.server_key = attributes[:'server_key']
      end

      if attributes.key?(:'sender_id')
        self.sender_id = attributes[:'sender_id']
      end

      if attributes.key?(:'can_user_create_more_conversations')
        self.can_user_create_more_conversations = attributes[:'can_user_create_more_conversations']
      end

      if attributes.key?(:'page_access_token')
        self.page_access_token = attributes[:'page_access_token']
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

      if attributes.key?(:'hide_unsubscribe_link')
        self.hide_unsubscribe_link = attributes[:'hide_unsubscribe_link']
      end

      if attributes.key?(:'from_address')
        self.from_address = attributes[:'from_address']
      end

      if attributes.key?(:'brand_color')
        self.brand_color = attributes[:'brand_color']
      else
        self.brand_color = '65758e'
      end

      if attributes.key?(:'fixed_intro_pane')
        self.fixed_intro_pane = attributes[:'fixed_intro_pane']
      else
        self.fixed_intro_pane = false
      end

      if attributes.key?(:'conversation_color')
        self.conversation_color = attributes[:'conversation_color']
      else
        self.conversation_color = '0099ff'
      end

      if attributes.key?(:'action_color')
        self.action_color = attributes[:'action_color']
      else
        self.action_color = '0099ff'
      end

      if attributes.key?(:'display_style')
        self.display_style = attributes[:'display_style']
      else
        self.display_style = 'button'
      end

      if attributes.key?(:'button_icon_url')
        self.button_icon_url = attributes[:'button_icon_url']
      end

      if attributes.key?(:'button_width')
        self.button_width = attributes[:'button_width']
      else
        self.button_width = '58'
      end

      if attributes.key?(:'button_height')
        self.button_height = attributes[:'button_height']
      else
        self.button_height = '58'
      end

      if attributes.key?(:'integration_order')
      end

      if attributes.key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.key?(:'business_icon_url')
        self.business_icon_url = attributes[:'business_icon_url']
      end

      if attributes.key?(:'background_image_url')
        self.background_image_url = attributes[:'background_image_url']
      end

      if attributes.key?(:'origin_whitelist')
      end

      if attributes.key?(:'prechat_capture')
        self.prechat_capture = attributes[:'prechat_capture']
      end

      if attributes.key?(:'hsm_fallback_language')
        self.hsm_fallback_language = attributes[:'hsm_fallback_language']
      else
        self.hsm_fallback_language = 'en_US'
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'account_management_access_token')
        self.account_management_access_token = attributes[:'account_management_access_token']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 100
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 100.')
      end

      if !@display_name.nil? && @display_name.to_s.length < 1
        invalid_properties.push('invalid value for "display_name", the character length must be great than or equal to 1.')
      end

      if !@server_key.nil? && @server_key.to_s.length < 1
        invalid_properties.push('invalid value for "server_key", the character length must be great than or equal to 1.')
      end

      if !@sender_id.nil? && @sender_id.to_s.length < 1
        invalid_properties.push('invalid value for "sender_id", the character length must be great than or equal to 1.')
      end

      if !@certificate.nil? && @certificate.to_s.length < 1
        invalid_properties.push('invalid value for "certificate", the character length must be great than or equal to 1.')
      end

      if !@from_address.nil? && @from_address.to_s.length < 1
        invalid_properties.push('invalid value for "from_address", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 100
      return false if !@display_name.nil? && @display_name.to_s.length < 1
      return false if !@server_key.nil? && @server_key.to_s.length < 1
      return false if !@sender_id.nil? && @sender_id.to_s.length < 1
      return false if !@certificate.nil? && @certificate.to_s.length < 1
      return false if !@from_address.nil? && @from_address.to_s.length < 1
      _one_of_found = false
      self.class.openapi_one_of.each do |_class|
        _one_of = SunshineConversationsClient.const_get(_class).build_from_hash(self.to_hash)
        if _one_of.valid?
          if _one_of_found
            return false
          else
            _one_of_found = true
          end
        end
      end

      if !_one_of_found
        return false
      end

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)
      if !display_name.nil? && display_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "display_name", the character length must be smaller than or equal to 100.'
      end

      if !display_name.nil? && display_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "display_name", the character length must be great than or equal to 1.'
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] server_key Value to be assigned
    def server_key=(server_key)
      if !server_key.nil? && server_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "server_key", the character length must be great than or equal to 1.'
      end

      @server_key = server_key
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_id Value to be assigned
    def sender_id=(sender_id)
      if !sender_id.nil? && sender_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "sender_id", the character length must be great than or equal to 1.'
      end

      @sender_id = sender_id
    end

    # Custom attribute writer method with validation
    # @param [Object] certificate Value to be assigned
    def certificate=(certificate)
      if !certificate.nil? && certificate.to_s.length < 1
        fail ArgumentError, 'invalid value for "certificate", the character length must be great than or equal to 1.'
      end

      @certificate = certificate
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
          display_name == o.display_name &&
          server_key == o.server_key &&
          sender_id == o.sender_id &&
          can_user_create_more_conversations == o.can_user_create_more_conversations &&
          page_access_token == o.page_access_token &&
          certificate == o.certificate &&
          password == o.password &&
          production == o.production &&
          auto_update_badge == o.auto_update_badge &&
          hide_unsubscribe_link == o.hide_unsubscribe_link &&
          from_address == o.from_address &&
          brand_color == o.brand_color &&
          fixed_intro_pane == o.fixed_intro_pane &&
          conversation_color == o.conversation_color &&
          action_color == o.action_color &&
          display_style == o.display_style &&
          button_icon_url == o.button_icon_url &&
          button_width == o.button_width &&
          button_height == o.button_height &&
          integration_order == o.integration_order &&
          business_name == o.business_name &&
          business_icon_url == o.business_icon_url &&
          background_image_url == o.background_image_url &&
          origin_whitelist == o.origin_whitelist &&
          prechat_capture == o.prechat_capture &&
          hsm_fallback_language == o.hsm_fallback_language &&
          account_id == o.account_id &&
          account_management_access_token == o.account_management_access_token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [display_name, server_key, sender_id, can_user_create_more_conversations, page_access_token, certificate, password, production, auto_update_badge, hide_unsubscribe_link, from_address, brand_color, fixed_intro_pane, conversation_color, action_color, display_style, button_icon_url, button_width, button_height, integration_order, business_name, business_icon_url, background_image_url, origin_whitelist, prechat_capture, hsm_fallback_language, account_id, account_management_access_token].hash
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
