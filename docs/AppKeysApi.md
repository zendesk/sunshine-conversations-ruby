# SunshineConversationsClient::AppKeysApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app_key**](AppKeysApi.md#create_app_key) | **POST** /v2/apps/{appId}/keys | Create App Key
[**delete_app_key**](AppKeysApi.md#delete_app_key) | **DELETE** /v2/apps/{appId}/keys/{keyId} | Delete App Key
[**get_app_key**](AppKeysApi.md#get_app_key) | **GET** /v2/apps/{appId}/keys/{keyId} | Get App Key
[**list_app_keys**](AppKeysApi.md#list_app_keys) | **GET** /v2/apps/{appId}/keys | List App Keys



## create_app_key

> AppKeyResponse create_app_key(app_id, app_key_create_body)

Create App Key

Creates an API key for the specified app. The response body will include a secret  as well as its corresponding id, which you can use to generate JSON Web Tokens to  securely make API calls on behalf of the app. 

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

api_instance = SunshineConversationsClient::AppKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
app_key_create_body = SunshineConversationsClient::AppKeyCreateBody.new # AppKeyCreateBody | 
# Be sure to add the required body parameters

begin
  #Create App Key
  result = api_instance.create_app_key(app_id, app_key_create_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppKeysApi->create_app_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **app_key_create_body** | [**AppKeyCreateBody**](AppKeyCreateBody.md)|  | 

### Return type

[**AppKeyResponse**](AppKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_app_key

> Object delete_app_key(app_id, key_id)

Delete App Key

Removes an API key.

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

api_instance = SunshineConversationsClient::AppKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
key_id = 'int_5d8cff3cd55b040010928b5b' # String | The id of the key.
# Be sure to add the required body parameters

begin
  #Delete App Key
  result = api_instance.delete_app_key(app_id, key_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppKeysApi->delete_app_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **key_id** | **String**| The id of the key. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_app_key

> AppKeyResponse get_app_key(app_id, key_id)

Get App Key

Returns an API key.

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

api_instance = SunshineConversationsClient::AppKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
key_id = 'int_5d8cff3cd55b040010928b5b' # String | The id of the key.
# Be sure to add the required body parameters

begin
  #Get App Key
  result = api_instance.get_app_key(app_id, key_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppKeysApi->get_app_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **key_id** | **String**| The id of the key. | 

### Return type

[**AppKeyResponse**](AppKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_app_keys

> AppKeyListResponse list_app_keys(app_id)

List App Keys

Lists all API keys for a given app.

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

api_instance = SunshineConversationsClient::AppKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
# Be sure to add the required body parameters

begin
  #List App Keys
  result = api_instance.list_app_keys(app_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppKeysApi->list_app_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**AppKeyListResponse**](AppKeyListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

