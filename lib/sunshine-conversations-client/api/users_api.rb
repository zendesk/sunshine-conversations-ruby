=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.5.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create User
    # Creates a new user.
    # @param app_id [String] Identifies the app.
    # @param user_create_body [UserCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def create_user(app_id, user_create_body, opts = {})
      data, _status_code, _headers = create_user_with_http_info(app_id, user_create_body, opts)
      data
    end

    # Create User
    # Creates a new user.
    # @param app_id [String] Identifies the app.
    # @param user_create_body [UserCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_user_with_http_info(app_id, user_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling UsersApi.create_user"
      end
      # verify the required parameter 'user_create_body' is set
      if @api_client.config.client_side_validation && user_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'user_create_body' when calling UsersApi.create_user"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(user_create_body) 

      # return_type
      return_type = opts[:return_type] || 'UserResponse' 

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
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete User
    # Delete a user, its clients and its conversation history. The user is considered completely deleted once the `user:delete` webhook is fired. To only delete a user’s personal information, see [Delete User Personal Information](#operation/deleteUserPersonalInformation).
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_user(app_id, user_id_or_external_id, opts = {})
      data, _status_code, _headers = delete_user_with_http_info(app_id, user_id_or_external_id, opts)
      data
    end

    # Delete User
    # Delete a user, its clients and its conversation history. The user is considered completely deleted once the &#x60;user:delete&#x60; webhook is fired. To only delete a user’s personal information, see [Delete User Personal Information](#operation/deleteUserPersonalInformation).
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_user_with_http_info(app_id, user_id_or_external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling UsersApi.delete_user"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

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
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete User Personal Information
    # Delete a user’s personal information. Calling this API will clear `givenName`, `surname`, `email` and `avatarUrl` and every custom property for the specified user. For every client owned by the user, it will also clear `displayName`, `avatarUrl` and any channel specific information stored in the info and raw fields. Calling this API doesn’t delete the user’s conversation history. To fully delete the user, see [Delete User](#operation/deleteUser).
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def delete_user_personal_information(app_id, user_id_or_external_id, opts = {})
      data, _status_code, _headers = delete_user_personal_information_with_http_info(app_id, user_id_or_external_id, opts)
      data
    end

    # Delete User Personal Information
    # Delete a user’s personal information. Calling this API will clear &#x60;givenName&#x60;, &#x60;surname&#x60;, &#x60;email&#x60; and &#x60;avatarUrl&#x60; and every custom property for the specified user. For every client owned by the user, it will also clear &#x60;displayName&#x60;, &#x60;avatarUrl&#x60; and any channel specific information stored in the info and raw fields. Calling this API doesn’t delete the user’s conversation history. To fully delete the user, see [Delete User](#operation/deleteUser).
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def delete_user_personal_information_with_http_info(app_id, user_id_or_external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user_personal_information ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling UsersApi.delete_user_personal_information"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling UsersApi.delete_user_personal_information"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}/personalinformation'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

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
      return_type = opts[:return_type] || 'UserResponse' 

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
        @api_client.config.logger.debug "API called: UsersApi#delete_user_personal_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get User
    # Fetches an individual user.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def get_user(app_id, user_id_or_external_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(app_id, user_id_or_external_id, opts)
      data
    end

    # Get User
    # Fetches an individual user.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_with_http_info(app_id, user_id_or_external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling UsersApi.get_user"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

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
      return_type = opts[:return_type] || 'UserResponse' 

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
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User
    # Updates a user.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param user_update_body [UserUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def update_user(app_id, user_id_or_external_id, user_update_body, opts = {})
      data, _status_code, _headers = update_user_with_http_info(app_id, user_id_or_external_id, user_update_body, opts)
      data
    end

    # Update User
    # Updates a user.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param user_update_body [UserUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_with_http_info(app_id, user_id_or_external_id, user_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling UsersApi.update_user"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling UsersApi.update_user"
      end
      # verify the required parameter 'user_update_body' is set
      if @api_client.config.client_side_validation && user_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'user_update_body' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(user_update_body) 

      # return_type
      return_type = opts[:return_type] || 'UserResponse' 

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
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
