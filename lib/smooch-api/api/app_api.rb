=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AppApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create a new app.
    # @param app_create_body Body for a createApp request.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def create_app(app_create_body, opts = {})
      data, _status_code, _headers = create_app_with_http_info(app_create_body, opts)
      return data
    end

    # 
    # Create a new app.
    # @param app_create_body Body for a createApp request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Fixnum, Hash)>] AppResponse data, response status code and response headers
    def create_app_with_http_info(app_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.create_app ..."
      end
      # verify the required parameter 'app_create_body' is set
      if @api_client.config.client_side_validation && app_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_create_body' when calling AppApi.create_app"
      end
      # resource path
      local_var_path = "/v1/apps"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(app_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#create_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create a secret key for the specified app.
    # @param app_id Identifies the app.
    # @param secret_key_create_body Body for a createSecretKey request.
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyResponse]
    def create_secret_key(app_id, secret_key_create_body, opts = {})
      data, _status_code, _headers = create_secret_key_with_http_info(app_id, secret_key_create_body, opts)
      return data
    end

    # 
    # Create a secret key for the specified app.
    # @param app_id Identifies the app.
    # @param secret_key_create_body Body for a createSecretKey request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyResponse, Fixnum, Hash)>] SecretKeyResponse data, response status code and response headers
    def create_secret_key_with_http_info(app_id, secret_key_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.create_secret_key ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.create_secret_key"
      end
      # verify the required parameter 'secret_key_create_body' is set
      if @api_client.config.client_side_validation && secret_key_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'secret_key_create_body' when calling AppApi.create_secret_key"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/keys".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(secret_key_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#create_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_app(app_id, opts = {})
      delete_app_with_http_info(app_id, opts)
      return nil
    end

    # 
    # Delete the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_app_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.delete_app ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.delete_app"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#delete_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified secret key.
    # @param app_id Identifies the app.
    # @param key_id Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_secret_key(app_id, key_id, opts = {})
      delete_secret_key_with_http_info(app_id, key_id, opts)
      return nil
    end

    # 
    # Delete the specified secret key.
    # @param app_id Identifies the app.
    # @param key_id Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_secret_key_with_http_info(app_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.delete_secret_key ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.delete_secret_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AppApi.delete_secret_key"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/keys/{keyId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'keyId' + '}', key_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#delete_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def get_app(app_id, opts = {})
      data, _status_code, _headers = get_app_with_http_info(app_id, opts)
      return data
    end

    # 
    # Get the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Fixnum, Hash)>] AppResponse data, response status code and response headers
    def get_app_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.get_app ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.get_app"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#get_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get an app-scoped JWT for the specified secret key.
    # @param app_id Identifies the app.
    # @param key_id Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [JwtResponse]
    def get_app_jwt(app_id, key_id, opts = {})
      data, _status_code, _headers = get_app_jwt_with_http_info(app_id, key_id, opts)
      return data
    end

    # 
    # Get an app-scoped JWT for the specified secret key.
    # @param app_id Identifies the app.
    # @param key_id Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JwtResponse, Fixnum, Hash)>] JwtResponse data, response status code and response headers
    def get_app_jwt_with_http_info(app_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.get_app_jwt ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.get_app_jwt"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AppApi.get_app_jwt"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/keys/{keyId}/jwt".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'keyId' + '}', key_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JwtResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#get_app_jwt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified secret key.
    # @param app_id Identifies the app.
    # @param key_id Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyResponse]
    def get_secret_key(app_id, key_id, opts = {})
      data, _status_code, _headers = get_secret_key_with_http_info(app_id, key_id, opts)
      return data
    end

    # 
    # Get the specified secret key.
    # @param app_id Identifies the app.
    # @param key_id Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyResponse, Fixnum, Hash)>] SecretKeyResponse data, response status code and response headers
    def get_secret_key_with_http_info(app_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.get_secret_key ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.get_secret_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AppApi.get_secret_key"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/keys/{keyId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'keyId' + '}', key_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#get_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List all apps configured.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return. (default to 25)
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return. (default to 0)
    # @option opts [String] :service_account_id The service account ID for which to list apps. (default to )
    # @return [ListAppsResponse]
    def list_apps(opts = {})
      data, _status_code, _headers = list_apps_with_http_info(opts)
      return data
    end

    # 
    # List all apps configured.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return.
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return.
    # @option opts [String] :service_account_id The service account ID for which to list apps.
    # @return [Array<(ListAppsResponse, Fixnum, Hash)>] ListAppsResponse data, response status code and response headers
    def list_apps_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.list_apps ..."
      end
      # resource path
      local_var_path = "/v1/apps"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'serviceAccountId'] = opts[:'service_account_id'] if !opts[:'service_account_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListAppsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#list_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List the secret keys for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [ListSecretKeysResponse]
    def list_secret_keys(app_id, opts = {})
      data, _status_code, _headers = list_secret_keys_with_http_info(app_id, opts)
      return data
    end

    # 
    # List the secret keys for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListSecretKeysResponse, Fixnum, Hash)>] ListSecretKeysResponse data, response status code and response headers
    def list_secret_keys_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.list_secret_keys ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.list_secret_keys"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/keys".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListSecretKeysResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#list_secret_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified app.
    # @param app_id Identifies the app.
    # @param app_update_body Body for an updateApp request.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def update_app(app_id, app_update_body, opts = {})
      data, _status_code, _headers = update_app_with_http_info(app_id, app_update_body, opts)
      return data
    end

    # 
    # Update the specified app.
    # @param app_id Identifies the app.
    # @param app_update_body Body for an updateApp request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Fixnum, Hash)>] AppResponse data, response status code and response headers
    def update_app_with_http_info(app_id, app_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.update_app ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppApi.update_app"
      end
      # verify the required parameter 'app_update_body' is set
      if @api_client.config.client_side_validation && app_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_update_body' when calling AppApi.update_app"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(app_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#update_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
