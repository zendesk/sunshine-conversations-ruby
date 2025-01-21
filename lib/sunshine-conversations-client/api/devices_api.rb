=begin
#Sunshine Conversations API

The version of the OpenAPI document: 14.3.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class DevicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Device
    # Fetches a specific Device.  ```shell /v2/apps/:appId/users/:userId ``` 
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param device_id [String] The device&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [DeviceResponse]
    def get_device(app_id, user_id_or_external_id, device_id, opts = {})
      data, _status_code, _headers = get_device_with_http_info(app_id, user_id_or_external_id, device_id, opts)
      data
    end

    # Get Device
    # Fetches a specific Device.  &#x60;&#x60;&#x60;shell /v2/apps/:appId/users/:userId &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param device_id [String] The device&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceResponse, Integer, Hash)>] DeviceResponse data, response status code and response headers
    def get_device_with_http_info(app_id, user_id_or_external_id, device_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.get_device ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling DevicesApi.get_device"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling DevicesApi.get_device"
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesApi.get_device"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}/devices/{deviceId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s)).sub('{' + 'deviceId' + '}', CGI.escape(device_id.to_s))

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
      return_type = opts[:return_type] || 'DeviceResponse' 

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
        @api_client.config.logger.debug "API called: DevicesApi#get_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Devices
    # Get all the devices for a particular user. The Devices are sorted based on last seen time.  ```shell /v2/apps/:appId/users/:userId/devices ``` 
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [DeviceListResponse]
    def list_devices(app_id, user_id_or_external_id, opts = {})
      data, _status_code, _headers = list_devices_with_http_info(app_id, user_id_or_external_id, opts)
      data
    end

    # List Devices
    # Get all the devices for a particular user. The Devices are sorted based on last seen time.  &#x60;&#x60;&#x60;shell /v2/apps/:appId/users/:userId/devices &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceListResponse, Integer, Hash)>] DeviceListResponse data, response status code and response headers
    def list_devices_with_http_info(app_id, user_id_or_external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.list_devices ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling DevicesApi.list_devices"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling DevicesApi.list_devices"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}/devices'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

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
      return_type = opts[:return_type] || 'DeviceListResponse' 

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
        @api_client.config.logger.debug "API called: DevicesApi#list_devices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
