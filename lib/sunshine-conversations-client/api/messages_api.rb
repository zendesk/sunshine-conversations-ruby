=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.3.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete All Messages
    # Delete all messages of a particular conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_all_messages(app_id, conversation_id, opts = {})
      data, _status_code, _headers = delete_all_messages_with_http_info(app_id, conversation_id, opts)
      data
    end

    # Delete All Messages
    # Delete all messages of a particular conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_all_messages_with_http_info(app_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.delete_all_messages ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling MessagesApi.delete_all_messages"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling MessagesApi.delete_all_messages"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/messages'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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
        @api_client.config.logger.debug "API called: MessagesApi#delete_all_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Message
    # Delete a single message of a particular conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param message_id [String] The id of the message.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_message(app_id, conversation_id, message_id, opts = {})
      data, _status_code, _headers = delete_message_with_http_info(app_id, conversation_id, message_id, opts)
      data
    end

    # Delete Message
    # Delete a single message of a particular conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param message_id [String] The id of the message.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_message_with_http_info(app_id, conversation_id, message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.delete_message ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling MessagesApi.delete_message"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling MessagesApi.delete_message"
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling MessagesApi.delete_message"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/messages/{messageId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s)).sub('{' + 'messageId' + '}', CGI.escape(message_id.to_s))

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
        @api_client.config.logger.debug "API called: MessagesApi#delete_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Messages
    # List all messages for a particular conversation. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits), in the _backwards_ direction, with the most recent (i.e. last) page of messages being returned by default. The `hasMore` flag indicates whether more messages exist in the direction you are currently paginating through. To page backwards in the history, use the `beforeCursor` or follow the `prev` link. The page size limit is fixed at 100 messages per page.  ```shell /v2/apps/:appId/conversations/:conversationId/messages?page[before]=5f32b88acf6bf25073b2be56 ``` 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [MessageListResponse]
    def list_messages(app_id, conversation_id, opts = {})
      data, _status_code, _headers = list_messages_with_http_info(app_id, conversation_id, opts)
      data
    end

    # List Messages
    # List all messages for a particular conversation. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits), in the _backwards_ direction, with the most recent (i.e. last) page of messages being returned by default. The &#x60;hasMore&#x60; flag indicates whether more messages exist in the direction you are currently paginating through. To page backwards in the history, use the &#x60;beforeCursor&#x60; or follow the &#x60;prev&#x60; link. The page size limit is fixed at 100 messages per page.  &#x60;&#x60;&#x60;shell /v2/apps/:appId/conversations/:conversationId/messages?page[before]&#x3D;5f32b88acf6bf25073b2be56 &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [Array<(MessageListResponse, Integer, Hash)>] MessageListResponse data, response status code and response headers
    def list_messages_with_http_info(app_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.list_messages ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling MessagesApi.list_messages"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling MessagesApi.list_messages"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/messages'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'MessageListResponse' 

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
        @api_client.config.logger.debug "API called: MessagesApi#list_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Post Message
    # Send a message in a particular conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param message_post [MessagePost] 
    # @param [Hash] opts the optional parameters
    # @return [MessagePostResponse]
    def post_message(app_id, conversation_id, message_post, opts = {})
      data, _status_code, _headers = post_message_with_http_info(app_id, conversation_id, message_post, opts)
      data
    end

    # Post Message
    # Send a message in a particular conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param message_post [MessagePost] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessagePostResponse, Integer, Hash)>] MessagePostResponse data, response status code and response headers
    def post_message_with_http_info(app_id, conversation_id, message_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.post_message ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling MessagesApi.post_message"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling MessagesApi.post_message"
      end
      # verify the required parameter 'message_post' is set
      if @api_client.config.client_side_validation && message_post.nil?
        fail ArgumentError, "Missing the required parameter 'message_post' when calling MessagesApi.post_message"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/messages'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(message_post) 

      # return_type
      return_type = opts[:return_type] || 'MessagePostResponse' 

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
        @api_client.config.logger.debug "API called: MessagesApi#post_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
