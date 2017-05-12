# SmoochApi::AppApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app**](AppApi.md#create_app) | **POST** /apps | 
[**create_secret_key**](AppApi.md#create_secret_key) | **POST** /apps/{appId}/keys | 
[**delete_app**](AppApi.md#delete_app) | **DELETE** /apps/{appId} | 
[**delete_secret_key**](AppApi.md#delete_secret_key) | **DELETE** /apps/{appId}/keys/{keyId} | 
[**get_app**](AppApi.md#get_app) | **GET** /apps/{appId} | 
[**get_app_jwt**](AppApi.md#get_app_jwt) | **GET** /apps/{appId}/keys/{keyId}/jwt | 
[**get_secret_key**](AppApi.md#get_secret_key) | **GET** /apps/{appId}/keys/{keyId} | 
[**list_apps**](AppApi.md#list_apps) | **GET** /apps | 
[**list_secret_keys**](AppApi.md#list_secret_keys) | **GET** /apps/{appId}/keys | 


# **create_app**
> AppResponse create_app(app_create_body)



Create a new app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_create_body = SmoochApi::AppCreate.new # AppCreate | Body for a createApp request.


begin
  result = api_instance.create_app(app_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->create_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_create_body** | [**AppCreate**](AppCreate.md)| Body for a createApp request. | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_secret_key**
> SecretKeyResponse create_secret_key(app_id, secret_key_create_body)



Create a secret key for the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.

secret_key_create_body = SmoochApi::SecretKeyCreate.new # SecretKeyCreate | Body for a createSecretKey request.


begin
  result = api_instance.create_secret_key(app_id, secret_key_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->create_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **secret_key_create_body** | [**SecretKeyCreate**](SecretKeyCreate.md)| Body for a createSecretKey request. | 

### Return type

[**SecretKeyResponse**](SecretKeyResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_app**
> delete_app(app_id, )



Delete the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.


begin
  api_instance.delete_app(app_id, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->delete_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_secret_key**
> delete_secret_key(app_id, key_id)



Delete the specified secret key.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.

key_id = "key_id_example" # String | Identifies the secret key.


begin
  api_instance.delete_secret_key(app_id, key_id)
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->delete_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **key_id** | **String**| Identifies the secret key. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app**
> AppResponse get_app(app_id, )



Get the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.


begin
  result = api_instance.get_app(app_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->get_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_jwt**
> JwtResponse get_app_jwt(app_id, key_id)



Get an app-scoped JWT for the specified secret key.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.

key_id = "key_id_example" # String | Identifies the secret key.


begin
  result = api_instance.get_app_jwt(app_id, key_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->get_app_jwt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **key_id** | **String**| Identifies the secret key. | 

### Return type

[**JwtResponse**](JwtResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_secret_key**
> SecretKeyResponse get_secret_key(app_id, key_id)



Get the specified secret key.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.

key_id = "key_id_example" # String | Identifies the secret key.


begin
  result = api_instance.get_secret_key(app_id, key_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->get_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **key_id** | **String**| Identifies the secret key. | 

### Return type

[**SecretKeyResponse**](SecretKeyResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_apps**
> ListAppsResponse list_apps(opts)



List all apps configured.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

opts = { 
  limit: 0, # Integer | The number of records to return.
  offset: 0 # Integer | The number of initial records to skip before picking records to return.
}

begin
  result = api_instance.list_apps(opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->list_apps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of records to return. | [optional] [default to 0]
 **offset** | **Integer**| The number of initial records to skip before picking records to return. | [optional] [default to 0]

### Return type

[**ListAppsResponse**](ListAppsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_secret_keys**
> ListSecretKeysResponse list_secret_keys(app_id, )



List the secret keys for the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_id = "app_id_example" # String | Identifies the app.


begin
  result = api_instance.list_secret_keys(app_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->list_secret_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**ListSecretKeysResponse**](ListSecretKeysResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



