=begin
#Sunshine Conversations API

The version of the OpenAPI document: 14.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class OAuthEndpointsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authorize
    # This endpoint begins the OAuth flow. It relies on a browser session for authentication. If the user is not logged in to Sunshine Conversations they will be redirected to the login page. If the user has many apps, they will first be prompted to select the one they wish to integrate with. They will then be presented with an Allow/Deny dialog, describing details of the access your integration is requesting.
    # @param client_id [String] Your integration’s unique identifier
    # @param response_type [String] For now the only acceptable value is code.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state You may pass in any arbitrary string value here which will be returned to you along with the code via browser redirect.
    # @option opts [String] :redirect_uri You may pass in a redirect_uri to determine which URI the response is redirected to. This URI must be contained in the list configured by your integration. If this option is not passed, the first URI present in the list will be used.
    # @return [nil]
    def authorize(client_id, response_type, opts = {})
      authorize_with_http_info(client_id, response_type, opts)
      nil
    end

    # Authorize
    # This endpoint begins the OAuth flow. It relies on a browser session for authentication. If the user is not logged in to Sunshine Conversations they will be redirected to the login page. If the user has many apps, they will first be prompted to select the one they wish to integrate with. They will then be presented with an Allow/Deny dialog, describing details of the access your integration is requesting.
    # @param client_id [String] Your integration’s unique identifier
    # @param response_type [String] For now the only acceptable value is code.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state You may pass in any arbitrary string value here which will be returned to you along with the code via browser redirect.
    # @option opts [String] :redirect_uri You may pass in a redirect_uri to determine which URI the response is redirected to. This URI must be contained in the list configured by your integration. If this option is not passed, the first URI present in the list will be used.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def authorize_with_http_info(client_id, response_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuthEndpointsApi.authorize ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuthEndpointsApi.authorize"
      end
      # verify the required parameter 'response_type' is set
      if @api_client.config.client_side_validation && response_type.nil?
        fail ArgumentError, "Missing the required parameter 'response_type' when calling OAuthEndpointsApi.authorize"
      end
      # resource path
      local_var_path = '/oauth/authorize'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'client_id'] = client_id
      query_params[:'response_type'] = response_type
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: OAuthEndpointsApi#authorize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Token
    # This endpoint is used to exchange an authorization code for an access token. It should only be used in server-to-server calls.
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_token(inline_object, opts = {})
      data, _status_code, _headers = get_token_with_http_info(inline_object, opts)
      data
    end

    # Get Token
    # This endpoint is used to exchange an authorization code for an access token. It should only be used in server-to-server calls.
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_token_with_http_info(inline_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuthEndpointsApi.get_token ...'
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling OAuthEndpointsApi.get_token"
      end
      # resource path
      local_var_path = '/oauth/token'

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: OAuthEndpointsApi#get_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke Access
    # This endpoint is used to revoke your integration’s access to the user’s Sunshine Conversations app. Revoking access means your integration will no longer be able to interact with the app, and any webhooks the integration had previously configured will be removed.  Calling this endpoint is equivalent to the user removing your integration manually in the Sunshine Conversations web app. Your integration’s `removeUrl` (if configured) will also be called when an integration is removed in this way. 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def revoke_access(opts = {})
      data, _status_code, _headers = revoke_access_with_http_info(opts)
      data
    end

    # Revoke Access
    # This endpoint is used to revoke your integration’s access to the user’s Sunshine Conversations app. Revoking access means your integration will no longer be able to interact with the app, and any webhooks the integration had previously configured will be removed.  Calling this endpoint is equivalent to the user removing your integration manually in the Sunshine Conversations web app. Your integration’s &#x60;removeUrl&#x60; (if configured) will also be called when an integration is removed in this way. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def revoke_access_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuthEndpointsApi.revoke_access ...'
      end
      # resource path
      local_var_path = '/oauth/authorization'

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
        @api_client.config.logger.debug "API called: OAuthEndpointsApi#revoke_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
