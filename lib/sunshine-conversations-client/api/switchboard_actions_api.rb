=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class SwitchboardActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Accept Control
    # The acceptControl action transfers the control of the conversation to the pending switchboard integration. When using integration auth scope, a 403 is returned if the pending switchboard integration is not the authenticated integration.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param accept_control_body [AcceptControlBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def accept_control(app_id, conversation_id, accept_control_body, opts = {})
      data, _status_code, _headers = accept_control_with_http_info(app_id, conversation_id, accept_control_body, opts)
      data
    end

    # Accept Control
    # The acceptControl action transfers the control of the conversation to the pending switchboard integration. When using integration auth scope, a 403 is returned if the pending switchboard integration is not the authenticated integration.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param accept_control_body [AcceptControlBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def accept_control_with_http_info(app_id, conversation_id, accept_control_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardActionsApi.accept_control ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardActionsApi.accept_control"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling SwitchboardActionsApi.accept_control"
      end
      # verify the required parameter 'accept_control_body' is set
      if @api_client.config.client_side_validation && accept_control_body.nil?
        fail ArgumentError, "Missing the required parameter 'accept_control_body' when calling SwitchboardActionsApi.accept_control"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/acceptControl'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(accept_control_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardActionsApi#accept_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Offer Control
    # The offerControl action will invite a switchboard integration to accept control of the conversation (changing its status to pending), and trigger a webhook signal to that integration indicating that they have been offered control of the conversation. Invalidates previous offerControl actions.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param offer_control_body [OfferControlBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def offer_control(app_id, conversation_id, offer_control_body, opts = {})
      data, _status_code, _headers = offer_control_with_http_info(app_id, conversation_id, offer_control_body, opts)
      data
    end

    # Offer Control
    # The offerControl action will invite a switchboard integration to accept control of the conversation (changing its status to pending), and trigger a webhook signal to that integration indicating that they have been offered control of the conversation. Invalidates previous offerControl actions.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param offer_control_body [OfferControlBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def offer_control_with_http_info(app_id, conversation_id, offer_control_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardActionsApi.offer_control ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardActionsApi.offer_control"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling SwitchboardActionsApi.offer_control"
      end
      # verify the required parameter 'offer_control_body' is set
      if @api_client.config.client_side_validation && offer_control_body.nil?
        fail ArgumentError, "Missing the required parameter 'offer_control_body' when calling SwitchboardActionsApi.offer_control"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/offerControl'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(offer_control_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardActionsApi#offer_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Pass Control
    # The passControl action marks the named switchboard integration as active and transitions all the other switchboard integrations to standby status. The `passControl` action is idempotent if either the target `switchboardIntegration` is specified explicitly by its `id` or `name`, or the `next` keyword is used for the `switchboardIntegration` field, and the invoking integration can be identified by its [OAuth token](https://docs.smooch.io/guide/oauth/#redirect-and-acquiring-an-oauth-token) or [Custom Integration API Key](https://docs.smooch.io/rest/#tag/CustomIntegrationApiKeys) credentials. Duplicate passControl actions using the `next` keyword and their metadata are disregarded. For more information, see [Switchboard passControl](https://docs.smooch.io/guide/switchboard/#pass-control).
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param pass_control_body [PassControlBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pass_control(app_id, conversation_id, pass_control_body, opts = {})
      data, _status_code, _headers = pass_control_with_http_info(app_id, conversation_id, pass_control_body, opts)
      data
    end

    # Pass Control
    # The passControl action marks the named switchboard integration as active and transitions all the other switchboard integrations to standby status. The &#x60;passControl&#x60; action is idempotent if either the target &#x60;switchboardIntegration&#x60; is specified explicitly by its &#x60;id&#x60; or &#x60;name&#x60;, or the &#x60;next&#x60; keyword is used for the &#x60;switchboardIntegration&#x60; field, and the invoking integration can be identified by its [OAuth token](https://docs.smooch.io/guide/oauth/#redirect-and-acquiring-an-oauth-token) or [Custom Integration API Key](https://docs.smooch.io/rest/#tag/CustomIntegrationApiKeys) credentials. Duplicate passControl actions using the &#x60;next&#x60; keyword and their metadata are disregarded. For more information, see [Switchboard passControl](https://docs.smooch.io/guide/switchboard/#pass-control).
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param pass_control_body [PassControlBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pass_control_with_http_info(app_id, conversation_id, pass_control_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardActionsApi.pass_control ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardActionsApi.pass_control"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling SwitchboardActionsApi.pass_control"
      end
      # verify the required parameter 'pass_control_body' is set
      if @api_client.config.client_side_validation && pass_control_body.nil?
        fail ArgumentError, "Missing the required parameter 'pass_control_body' when calling SwitchboardActionsApi.pass_control"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/passControl'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(pass_control_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardActionsApi#pass_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Release Control
    # The releaseControl action releases the control of the conversation by nullifying its switchboard state. When using integration auth scope, a 403 is returned if the active switchboard integration is not the authenticated integration.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def release_control(app_id, conversation_id, opts = {})
      data, _status_code, _headers = release_control_with_http_info(app_id, conversation_id, opts)
      data
    end

    # Release Control
    # The releaseControl action releases the control of the conversation by nullifying its switchboard state. When using integration auth scope, a 403 is returned if the active switchboard integration is not the authenticated integration.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def release_control_with_http_info(app_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardActionsApi.release_control ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardActionsApi.release_control"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling SwitchboardActionsApi.release_control"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/releaseControl'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardActionsApi#release_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
