=begin
#Sunshine Conversations API

The version of the OpenAPI document: 13.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class CustomIntegrationApiKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Integration Key
    # Creates an API key for the specified custom integration. The response body will include a secret as well it’s corresponding id, which you can use to generate JSON Web Tokens to securely make API calls on behalf of the integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param integration_api_key [IntegrationApiKey] 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationApiKeyResponse]
    def create_custom_integration_key(app_id, integration_id, integration_api_key, opts = {})
      data, _status_code, _headers = create_custom_integration_key_with_http_info(app_id, integration_id, integration_api_key, opts)
      data
    end

    # Create Integration Key
    # Creates an API key for the specified custom integration. The response body will include a secret as well it’s corresponding id, which you can use to generate JSON Web Tokens to securely make API calls on behalf of the integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param integration_api_key [IntegrationApiKey] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationApiKeyResponse, Integer, Hash)>] IntegrationApiKeyResponse data, response status code and response headers
    def create_custom_integration_key_with_http_info(app_id, integration_id, integration_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomIntegrationApiKeysApi.create_custom_integration_key ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling CustomIntegrationApiKeysApi.create_custom_integration_key"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling CustomIntegrationApiKeysApi.create_custom_integration_key"
      end
      # verify the required parameter 'integration_api_key' is set
      if @api_client.config.client_side_validation && integration_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'integration_api_key' when calling CustomIntegrationApiKeysApi.create_custom_integration_key"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/keys'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(integration_api_key) 

      # return_type
      return_type = opts[:return_type] || 'IntegrationApiKeyResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomIntegrationApiKeysApi#create_custom_integration_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Integration Key
    # Removes an API key.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param key_id [String] The id of the key.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_custom_integration_key(app_id, integration_id, key_id, opts = {})
      data, _status_code, _headers = delete_custom_integration_key_with_http_info(app_id, integration_id, key_id, opts)
      data
    end

    # Delete Integration Key
    # Removes an API key.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param key_id [String] The id of the key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_custom_integration_key_with_http_info(app_id, integration_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomIntegrationApiKeysApi.delete_custom_integration_key ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling CustomIntegrationApiKeysApi.delete_custom_integration_key"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling CustomIntegrationApiKeysApi.delete_custom_integration_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CustomIntegrationApiKeysApi.delete_custom_integration_key"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/keys/{keyId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomIntegrationApiKeysApi#delete_custom_integration_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Integration Key
    # Get the specified API key.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param key_id [String] The id of the key.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationApiKeyResponse]
    def get_custom_integration_key(app_id, integration_id, key_id, opts = {})
      data, _status_code, _headers = get_custom_integration_key_with_http_info(app_id, integration_id, key_id, opts)
      data
    end

    # Get Integration Key
    # Get the specified API key.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param key_id [String] The id of the key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationApiKeyResponse, Integer, Hash)>] IntegrationApiKeyResponse data, response status code and response headers
    def get_custom_integration_key_with_http_info(app_id, integration_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomIntegrationApiKeysApi.get_custom_integration_key ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling CustomIntegrationApiKeysApi.get_custom_integration_key"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling CustomIntegrationApiKeysApi.get_custom_integration_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CustomIntegrationApiKeysApi.get_custom_integration_key"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/keys/{keyId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'IntegrationApiKeyResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomIntegrationApiKeysApi#get_custom_integration_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Integration Keys
    # Lists all API keys for a given integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationApiKeyListResponse]
    def list_custom_integration_keys(app_id, integration_id, opts = {})
      data, _status_code, _headers = list_custom_integration_keys_with_http_info(app_id, integration_id, opts)
      data
    end

    # List Integration Keys
    # Lists all API keys for a given integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationApiKeyListResponse, Integer, Hash)>] IntegrationApiKeyListResponse data, response status code and response headers
    def list_custom_integration_keys_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomIntegrationApiKeysApi.list_custom_integration_keys ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling CustomIntegrationApiKeysApi.list_custom_integration_keys"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling CustomIntegrationApiKeysApi.list_custom_integration_keys"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/keys'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'IntegrationApiKeyListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomIntegrationApiKeysApi#list_custom_integration_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
