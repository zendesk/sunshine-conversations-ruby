# SmoochApi::AppApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app**](AppApi.md#create_app) | **POST** /v1.1/apps | 
[**create_secret_key**](AppApi.md#create_secret_key) | **POST** /v1.1/apps/{appId}/keys | 
[**delete_app**](AppApi.md#delete_app) | **DELETE** /v1.1/apps/{appId} | 
[**delete_secret_key**](AppApi.md#delete_secret_key) | **DELETE** /v1.1/apps/{appId}/keys/{keyId} | 
[**get_app**](AppApi.md#get_app) | **GET** /v1.1/apps/{appId} | 
[**get_app_jwt**](AppApi.md#get_app_jwt) | **GET** /v1.1/apps/{appId}/keys/{keyId}/jwt | 
[**get_secret_key**](AppApi.md#get_secret_key) | **GET** /v1.1/apps/{appId}/keys/{keyId} | 
[**list_apps**](AppApi.md#list_apps) | **GET** /v1.1/apps | 
[**list_secret_keys**](AppApi.md#list_secret_keys) | **GET** /v1.1/apps/{appId}/keys | 
[**update_app**](AppApi.md#update_app) | **PUT** /v1.1/apps/{appId} | 


# **create_app**
> AppResponse create_app(appCreateBody)



Create a new app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appCreateBody = SmoochApi::AppCreate.new # AppCreate | Body for a createApp request.


begin
  result = api_instance.create_app(appCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->create_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appCreateBody** | [**AppCreate**](AppCreate.md)| Body for a createApp request. | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_secret_key**
> SecretKeyResponse create_secret_key(appId, secretKeyCreateBody)



Create a secret key for the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.

secretKeyCreateBody = SmoochApi::SecretKeyCreate.new # SecretKeyCreate | Body for a createSecretKey request.


begin
  result = api_instance.create_secret_key(appId, secretKeyCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->create_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **secretKeyCreateBody** | [**SecretKeyCreate**](SecretKeyCreate.md)| Body for a createSecretKey request. | 

### Return type

[**SecretKeyResponse**](SecretKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_app**
> delete_app(appId)



Delete the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.


begin
  api_instance.delete_app(appId)
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->delete_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_secret_key**
> delete_secret_key(appId, keyId)



Delete the specified secret key.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.

keyId = "keyId_example" # String | Identifies the secret key.


begin
  api_instance.delete_secret_key(appId, keyId)
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->delete_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **keyId** | **String**| Identifies the secret key. | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app**
> AppResponse get_app(appId)



Get the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.


begin
  result = api_instance.get_app(appId)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->get_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_jwt**
> JwtResponse get_app_jwt(appId, keyId)



Get an app-scoped JWT for the specified secret key.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.

keyId = "keyId_example" # String | Identifies the secret key.


begin
  result = api_instance.get_app_jwt(appId, keyId)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->get_app_jwt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **keyId** | **String**| Identifies the secret key. | 

### Return type

[**JwtResponse**](JwtResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_secret_key**
> SecretKeyResponse get_secret_key(appId, keyId)



Get the specified secret key.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.

keyId = "keyId_example" # String | Identifies the secret key.


begin
  result = api_instance.get_secret_key(appId, keyId)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->get_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **keyId** | **String**| Identifies the secret key. | 

### Return type

[**SecretKeyResponse**](SecretKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_apps**
> ListAppsResponse list_apps(limit, offset, serviceAccountId)



List all apps configured.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

opts = { 
  limit: 25, # Integer | The number of records to return.
  offset: 0, # Integer | The number of initial records to skip before picking records to return.
  serviceAccountId: "" # String | The service account ID for which to list apps.
}

begin
  result = api_instance.list_apps(limit, offset, serviceAccountId)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->list_apps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of records to return. | [optional] [default to 25]
 **offset** | **Integer**| The number of initial records to skip before picking records to return. | [optional] [default to 0]
 **serviceAccountId** | **String**| The service account ID for which to list apps. | [optional] [default to ]

### Return type

[**ListAppsResponse**](ListAppsResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_secret_keys**
> ListSecretKeysResponse list_secret_keys(appId)



List the secret keys for the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.


begin
  result = api_instance.list_secret_keys(appId)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->list_secret_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 

### Return type

[**ListSecretKeysResponse**](ListSecretKeysResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_app**
> AppResponse update_app(appId, appUpdateBody)



Update the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appId = "appId_example" # String | Identifies the app.

appUpdateBody = SmoochApi::AppUpdate.new # AppUpdate | Body for an updateApp request.


begin
  result = api_instance.update_app(appId, appUpdateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->update_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **appUpdateBody** | [**AppUpdate**](AppUpdate.md)| Body for an updateApp request. | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



