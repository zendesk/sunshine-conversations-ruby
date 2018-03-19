# SmoochApi::ServiceAccountApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_secret_key**](ServiceAccountApi.md#create_secret_key) | **POST** /v1/serviceaccounts/{serviceAccountId}/keys | 
[**create_service_account**](ServiceAccountApi.md#create_service_account) | **POST** /v1/serviceaccounts | 
[**delete_secret_key**](ServiceAccountApi.md#delete_secret_key) | **DELETE** /v1/serviceaccounts/{serviceAccountId}/keys/{keyId} | 
[**delete_service_account**](ServiceAccountApi.md#delete_service_account) | **DELETE** /v1/serviceaccounts/{serviceAccountId} | 
[**get_jwt**](ServiceAccountApi.md#get_jwt) | **GET** /v1/serviceaccounts/{serviceAccountId}/keys/{keyId}/jwt | 
[**get_secret_key**](ServiceAccountApi.md#get_secret_key) | **GET** /v1/serviceaccounts/{serviceAccountId}/keys/{keyId} | 
[**get_service_account**](ServiceAccountApi.md#get_service_account) | **GET** /v1/serviceaccounts/{serviceAccountId} | 
[**list_secret_keys**](ServiceAccountApi.md#list_secret_keys) | **GET** /v1/serviceaccounts/{serviceAccountId}/keys | 
[**list_service_accounts**](ServiceAccountApi.md#list_service_accounts) | **GET** /v1/serviceaccounts | 
[**update_service_account**](ServiceAccountApi.md#update_service_account) | **PUT** /v1/serviceaccounts/{serviceAccountId} | 


# **create_secret_key**
> SecretKeyResponse create_secret_key(service_account_id, secret_key_create_body)



Create a secret key for the specified service account.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.

secret_key_create_body = SmoochApi::SecretKeyCreate.new # SecretKeyCreate | Body for a createSecretKey request.


begin
  result = api_instance.create_secret_key(service_account_id, secret_key_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->create_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 
 **secret_key_create_body** | [**SecretKeyCreate**](SecretKeyCreate.md)| Body for a createSecretKey request. | 

### Return type

[**SecretKeyResponse**](SecretKeyResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_service_account**
> ServiceAccountResponse create_service_account(service_account_create_body)



Create a new service account.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_create_body = SmoochApi::ServiceAccountCreate.new # ServiceAccountCreate | Body for a createServiceAccount request.


begin
  result = api_instance.create_service_account(service_account_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->create_service_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_create_body** | [**ServiceAccountCreate**](ServiceAccountCreate.md)| Body for a createServiceAccount request. | 

### Return type

[**ServiceAccountResponse**](ServiceAccountResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_secret_key**
> delete_secret_key(service_account_id, key_id)



Delete the specified service account secret key.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.

key_id = "key_id_example" # String | Identifies the secret key.


begin
  api_instance.delete_secret_key(service_account_id, key_id)
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->delete_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 
 **key_id** | **String**| Identifies the secret key. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_service_account**
> delete_service_account(service_account_id, )



Delete the specified service account.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.


begin
  api_instance.delete_service_account(service_account_id, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->delete_service_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_jwt**
> JwtResponse get_jwt(service_account_id, key_id)



Get an account-scoped JWT for the specified service account secret key.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.

key_id = "key_id_example" # String | Identifies the secret key.


begin
  result = api_instance.get_jwt(service_account_id, key_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->get_jwt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 
 **key_id** | **String**| Identifies the secret key. | 

### Return type

[**JwtResponse**](JwtResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_secret_key**
> SecretKeyResponse get_secret_key(service_account_id, key_id)



Get the specified service account secret key.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.

key_id = "key_id_example" # String | Identifies the secret key.


begin
  result = api_instance.get_secret_key(service_account_id, key_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->get_secret_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 
 **key_id** | **String**| Identifies the secret key. | 

### Return type

[**SecretKeyResponse**](SecretKeyResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_service_account**
> ServiceAccountResponse get_service_account(service_account_id, )



Get the specified service account.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.


begin
  result = api_instance.get_service_account(service_account_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->get_service_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 

### Return type

[**ServiceAccountResponse**](ServiceAccountResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_secret_keys**
> ListSecretKeysResponse list_secret_keys(service_account_id, )



List the secret keys for the specified service account.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.


begin
  result = api_instance.list_secret_keys(service_account_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->list_secret_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 

### Return type

[**ListSecretKeysResponse**](ListSecretKeysResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_service_accounts**
> ListServiceAccountsResponse list_service_accounts(opts)



List all service accounts configured.

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

api_instance = SmoochApi::ServiceAccountApi.new

opts = { 
  limit: 25, # Integer | The number of records to return.
  offset: 0 # Integer | The number of initial records to skip before picking records to return.
}

begin
  result = api_instance.list_service_accounts(opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->list_service_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of records to return. | [optional] [default to 25]
 **offset** | **Integer**| The number of initial records to skip before picking records to return. | [optional] [default to 0]

### Return type

[**ListServiceAccountsResponse**](ListServiceAccountsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_service_account**
> ServiceAccountResponse update_service_account(service_account_id, service_account_update_body)



Update the specified service account.

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

api_instance = SmoochApi::ServiceAccountApi.new

service_account_id = "service_account_id_example" # String | Identifies the service account.

service_account_update_body = SmoochApi::ServiceAccountUpdate.new # ServiceAccountUpdate | Body for an updateServiceAccount request.


begin
  result = api_instance.update_service_account(service_account_id, service_account_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ServiceAccountApi->update_service_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **String**| Identifies the service account. | 
 **service_account_update_body** | [**ServiceAccountUpdate**](ServiceAccountUpdate.md)| Body for an updateServiceAccount request. | 

### Return type

[**ServiceAccountResponse**](ServiceAccountResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



