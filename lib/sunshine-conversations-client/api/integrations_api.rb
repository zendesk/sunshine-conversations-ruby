=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Integration
    # The Create Integration endpoint allows you to provision apps with front-end messaging channels. Selecting a `custom` integration allows the creation of webhooks.
    # @param app_id [String] Identifies the app.
    # @param integration [Integration] 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def create_integration(app_id, integration, opts = {})
      data, _status_code, _headers = create_integration_with_http_info(app_id, integration, opts)
      data
    end

    # Create Integration
    # The Create Integration endpoint allows you to provision apps with front-end messaging channels. Selecting a &#x60;custom&#x60; integration allows the creation of webhooks.
    # @param app_id [String] Identifies the app.
    # @param integration [Integration] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Integer, Hash)>] IntegrationResponse data, response status code and response headers
    def create_integration_with_http_info(app_id, integration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.create_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationsApi.create_integration"
      end
      # verify the required parameter 'integration' is set
      if @api_client.config.client_side_validation && integration.nil?
        fail ArgumentError, "Missing the required parameter 'integration' when calling IntegrationsApi.create_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(integration) 

      # return_type
      return_type = opts[:return_type] || 'IntegrationResponse' 

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
        @api_client.config.logger.debug "API called: IntegrationsApi#create_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Integration
    # Delete the specified integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_integration(app_id, integration_id, opts = {})
      data, _status_code, _headers = delete_integration_with_http_info(app_id, integration_id, opts)
      data
    end

    # Delete Integration
    # Delete the specified integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_integration_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.delete_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationsApi.delete_integration"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.delete_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

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
        @api_client.config.logger.debug "API called: IntegrationsApi#delete_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Integration
    # Get integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def get_integration(app_id, integration_id, opts = {})
      data, _status_code, _headers = get_integration_with_http_info(app_id, integration_id, opts)
      data
    end

    # Get Integration
    # Get integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Integer, Hash)>] IntegrationResponse data, response status code and response headers
    def get_integration_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationsApi.get_integration"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.get_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

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
      return_type = opts[:return_type] || 'IntegrationResponse' 

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
        @api_client.config.logger.debug "API called: IntegrationsApi#get_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Integrations
    # List available integrations. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits). ```shell /v2/apps/:appId/integrations?page[after]=5e1606762556d93e9c176f69&page[size]=10&filter[types]=custom,web ``` 
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @option opts [IntegrationListFilter] :filter Contains parameters for filtering the results.
    # @return [IntegrationListResponse]
    def list_integrations(app_id, opts = {})
      data, _status_code, _headers = list_integrations_with_http_info(app_id, opts)
      data
    end

    # List Integrations
    # List available integrations. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits). &#x60;&#x60;&#x60;shell /v2/apps/:appId/integrations?page[after]&#x3D;5e1606762556d93e9c176f69&amp;page[size]&#x3D;10&amp;filter[types]&#x3D;custom,web &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @option opts [IntegrationListFilter] :filter Contains parameters for filtering the results.
    # @return [Array<(IntegrationListResponse, Integer, Hash)>] IntegrationListResponse data, response status code and response headers
    def list_integrations_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_integrations ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationsApi.list_integrations"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'IntegrationListResponse' 

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
        @api_client.config.logger.debug "API called: IntegrationsApi#list_integrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Integration
    # Allows you to update certain fields of existing integrations. If updating a specific property is not supported, you must delete the integration and re-create it with the new data.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param integration_update [IntegrationUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def update_integration(app_id, integration_id, integration_update, opts = {})
      data, _status_code, _headers = update_integration_with_http_info(app_id, integration_id, integration_update, opts)
      data
    end

    # Update Integration
    # Allows you to update certain fields of existing integrations. If updating a specific property is not supported, you must delete the integration and re-create it with the new data.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param integration_update [IntegrationUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Integer, Hash)>] IntegrationResponse data, response status code and response headers
    def update_integration_with_http_info(app_id, integration_id, integration_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.update_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationsApi.update_integration"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.update_integration"
      end
      # verify the required parameter 'integration_update' is set
      if @api_client.config.client_side_validation && integration_update.nil?
        fail ArgumentError, "Missing the required parameter 'integration_update' when calling IntegrationsApi.update_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(integration_update) 

      # return_type
      return_type = opts[:return_type] || 'IntegrationResponse' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#update_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
