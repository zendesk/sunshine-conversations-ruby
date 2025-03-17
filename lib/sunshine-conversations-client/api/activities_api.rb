=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class ActivitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Post Activity
    # Notify Sunshine Conversations of different conversation activities. Supported activity types are: * Typing activity * Conversation read event 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param activity_post [ActivityPost] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def post_activity(app_id, conversation_id, activity_post, opts = {})
      data, _status_code, _headers = post_activity_with_http_info(app_id, conversation_id, activity_post, opts)
      data
    end

    # Post Activity
    # Notify Sunshine Conversations of different conversation activities. Supported activity types are: * Typing activity * Conversation read event 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param activity_post [ActivityPost] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def post_activity_with_http_info(app_id, conversation_id, activity_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.post_activity ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ActivitiesApi.post_activity"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ActivitiesApi.post_activity"
      end
      # verify the required parameter 'activity_post' is set
      if @api_client.config.client_side_validation && activity_post.nil?
        fail ArgumentError, "Missing the required parameter 'activity_post' when calling ActivitiesApi.post_activity"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/activity'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(activity_post) 

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
        @api_client.config.logger.debug "API called: ActivitiesApi#post_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
