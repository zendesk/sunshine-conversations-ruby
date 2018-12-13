# SmoochApi::IntegrationApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration**](IntegrationApi.md#create_integration) | **POST** /v1.1/apps/{appId}/integrations | 
[**create_integration_menu**](IntegrationApi.md#create_integration_menu) | **POST** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
[**delete_integration**](IntegrationApi.md#delete_integration) | **DELETE** /v1.1/apps/{appId}/integrations/{integrationId} | 
[**delete_integration_menu**](IntegrationApi.md#delete_integration_menu) | **DELETE** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
[**get_integration**](IntegrationApi.md#get_integration) | **GET** /v1.1/apps/{appId}/integrations/{integrationId} | 
[**get_integration_menu**](IntegrationApi.md#get_integration_menu) | **GET** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
[**list_integrations**](IntegrationApi.md#list_integrations) | **GET** /v1.1/apps/{appId}/integrations | 
[**update_integration**](IntegrationApi.md#update_integration) | **PUT** /v1.1/apps/{appId}/integrations/{integrationId} | 
[**update_integration_menu**](IntegrationApi.md#update_integration_menu) | **PUT** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
[**update_integration_profile**](IntegrationApi.md#update_integration_profile) | **PUT** /v1.1/apps/{appId}/integrations/{integrationId}/profile | 


# **create_integration**
> IntegrationResponse create_integration(appId, integrationCreateBody)



Create an integration for the specified app.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationCreateBody = SmoochApi::IntegrationCreate.new # IntegrationCreate | Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 


begin
  result = api_instance.create_integration(appId, integrationCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->create_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationCreateBody** | [**IntegrationCreate**](IntegrationCreate.md)| Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration)  | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_integration_menu**
> MenuResponse create_integration_menu(appId, integrationId, menuCreateBody)



Create the specified integration’s menu, overriding the app menu if configured.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.

menuCreateBody = SmoochApi::Menu.new # Menu | Body for a createMenu request.


begin
  result = api_instance.create_integration_menu(appId, integrationId, menuCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->create_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 
 **menuCreateBody** | [**Menu**](Menu.md)| Body for a createMenu request. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration**
> delete_integration(appId, integrationId, )



Delete the specified integration.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.


begin
  api_instance.delete_integration(appId, integrationId, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->delete_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration_menu**
> delete_integration_menu(appId, integrationId, )



Delete the specified integration’s menu.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.


begin
  api_instance.delete_integration_menu(appId, integrationId, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->delete_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integration**
> IntegrationResponse get_integration(appId, integrationId, )



Get the specified integration.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.


begin
  result = api_instance.get_integration(appId, integrationId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->get_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integration_menu**
> MenuResponse get_integration_menu(appId, integrationId, )



Get the specified integration's menu.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.


begin
  result = api_instance.get_integration_menu(appId, integrationId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->get_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_integrations**
> ListIntegrationsResponse list_integrations(appId, , opts)



List integrations for the specified app.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

opts = { 
  types: "types_example" # String | List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types=*twilio*,*line*. 
}

begin
  result = api_instance.list_integrations(appId, , opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->list_integrations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **types** | **String**| List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types&#x3D;*twilio*,*line*.  | [optional] 

### Return type

[**ListIntegrationsResponse**](ListIntegrationsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_integration**
> IntegrationResponse update_integration(appId, integrationId, integrationUpdateBody)



Update the specified integration.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.

integrationUpdateBody = SmoochApi::IntegrationUpdate.new # IntegrationUpdate | Body for a updateIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 


begin
  result = api_instance.update_integration(appId, integrationId, integrationUpdateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->update_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 
 **integrationUpdateBody** | [**IntegrationUpdate**](IntegrationUpdate.md)| Body for a updateIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration)  | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_integration_menu**
> MenuResponse update_integration_menu(appId, integrationId, menuUpdateBody)



Update the specified integration’s menu.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.

menuUpdateBody = SmoochApi::Menu.new # Menu | Body for a updateMenu request.


begin
  result = api_instance.update_integration_menu(appId, integrationId, menuUpdateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->update_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 
 **menuUpdateBody** | [**Menu**](Menu.md)| Body for a updateMenu request. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_integration_profile**
> update_integration_profile(appId, integrationId, integrationProfileBody)



Update the specified integration’s profile.

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

api_instance = SmoochApi::IntegrationApi.new

appId = "appId_example" # String | Identifies the app.

integrationId = "integrationId_example" # String | Identifies the integration.

integrationProfileBody = SmoochApi::IntegrationProfileUpdate.new # IntegrationProfileUpdate | Body for a profileUpdate request.


begin
  api_instance.update_integration_profile(appId, integrationId, integrationProfileBody)
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->update_integration_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **integrationId** | **String**| Identifies the integration. | 
 **integrationProfileBody** | [**IntegrationProfileUpdate**](IntegrationProfileUpdate.md)| Body for a profileUpdate request. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



