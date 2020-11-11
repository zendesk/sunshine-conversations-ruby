# SunshineConversationsClient::CustomIntegrationApiKeysApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_integration_key**](CustomIntegrationApiKeysApi.md#create_custom_integration_key) | **POST** /v2/apps/{appId}/integrations/{integrationId}/keys | Create Integration Key
[**delete_custom_integration_key**](CustomIntegrationApiKeysApi.md#delete_custom_integration_key) | **DELETE** /v2/apps/{appId}/integrations/{integrationId}/keys/{keyId} | Delete Integration Key
[**get_custom_integration_key**](CustomIntegrationApiKeysApi.md#get_custom_integration_key) | **GET** /v2/apps/{appId}/integrations/{integrationId}/keys/{keyId} | Get Integration Key
[**list_custom_integration_keys**](CustomIntegrationApiKeysApi.md#list_custom_integration_keys) | **GET** /v2/apps/{appId}/integrations/{integrationId}/keys | List Integration Keys



## create_custom_integration_key

> IntegrationApiKeyResponse create_custom_integration_key(app_id, integration_id, integration_api_key)

Create Integration Key

Creates an API key for the specified custom integration. The response body will include a secret as well it’s corresponding id, which you can use to generate JSON Web Tokens to securely make API calls on behalf of the integration.

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

api_instance = SunshineConversationsClient::CustomIntegrationApiKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
integration_api_key = SunshineConversationsClient::IntegrationApiKey.new # IntegrationApiKey | 
# Be sure to add the required body parameters

begin
  #Create Integration Key
  result = api_instance.create_custom_integration_key(app_id, integration_id, integration_api_key)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling CustomIntegrationApiKeysApi->create_custom_integration_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **integration_api_key** | [**IntegrationApiKey**](IntegrationApiKey.md)|  | 

### Return type

[**IntegrationApiKeyResponse**](IntegrationApiKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_integration_key

> Object delete_custom_integration_key(app_id, integration_id, key_id)

Delete Integration Key

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

api_instance = SunshineConversationsClient::CustomIntegrationApiKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
key_id = 'int_5d8cff3cd55b040010928b5b' # String | The id of the key.
# Be sure to add the required body parameters

begin
  #Delete Integration Key
  result = api_instance.delete_custom_integration_key(app_id, integration_id, key_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling CustomIntegrationApiKeysApi->delete_custom_integration_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **key_id** | **String**| The id of the key. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_integration_key

> IntegrationApiKeyResponse get_custom_integration_key(app_id, integration_id, key_id)

Get Integration Key

Get the specified API key.

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

api_instance = SunshineConversationsClient::CustomIntegrationApiKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
key_id = 'int_5d8cff3cd55b040010928b5b' # String | The id of the key.
# Be sure to add the required body parameters

begin
  #Get Integration Key
  result = api_instance.get_custom_integration_key(app_id, integration_id, key_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling CustomIntegrationApiKeysApi->get_custom_integration_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **key_id** | **String**| The id of the key. | 

### Return type

[**IntegrationApiKeyResponse**](IntegrationApiKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_integration_keys

> IntegrationApiKeyListResponse list_custom_integration_keys(app_id, integration_id)

List Integration Keys

Lists all API keys for a given integration.

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

api_instance = SunshineConversationsClient::CustomIntegrationApiKeysApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
# Be sure to add the required body parameters

begin
  #List Integration Keys
  result = api_instance.list_custom_integration_keys(app_id, integration_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling CustomIntegrationApiKeysApi->list_custom_integration_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 

### Return type

[**IntegrationApiKeyListResponse**](IntegrationApiKeyListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

