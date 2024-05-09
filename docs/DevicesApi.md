# SunshineConversationsClient::DevicesApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_device**](DevicesApi.md#get_device) | **GET** /v2/apps/{appId}/users/{userIdOrExternalId}/devices/{deviceId} | Get Device
[**list_devices**](DevicesApi.md#list_devices) | **GET** /v2/apps/{appId}/users/{userIdOrExternalId}/devices | List Devices



## get_device

> DeviceResponse get_device(app_id, user_id_or_external_id, device_id)

Get Device

Fetches a specific Device.  ```shell /v2/apps/:appId/users/:userId ``` 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'
# setup authorization
SunshineConversationsClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure Bearer authorization (JWT): bearerAuth
  # Uncomment this line to use JWTs
  # config.access_token = 'YOUR_JWT'
end

api_instance = SunshineConversationsClient::DevicesApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
device_id = '5d8cff3cd55b040010928b5b' # String | The device's id.
# Be sure to add the required body parameters

begin
  #Get Device
  result = api_instance.get_device(app_id, user_id_or_external_id, device_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling DevicesApi->get_device: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 
 **device_id** | **String**| The device&#39;s id. | 

### Return type

[**DeviceResponse**](DeviceResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_devices

> ClientListResponse list_devices(app_id, user_id_or_external_id)

List Devices

Get all the devices for a particular user. The Devices are sorted based on last seen time.  ```shell /v2/apps/:appId/users/:userId/devices ``` 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'
# setup authorization
SunshineConversationsClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure Bearer authorization (JWT): bearerAuth
  # Uncomment this line to use JWTs
  # config.access_token = 'YOUR_JWT'
end

api_instance = SunshineConversationsClient::DevicesApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
# Be sure to add the required body parameters

begin
  #List Devices
  result = api_instance.list_devices(app_id, user_id_or_external_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling DevicesApi->list_devices: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 

### Return type

[**ClientListResponse**](ClientListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

