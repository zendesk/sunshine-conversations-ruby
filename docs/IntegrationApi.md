# SmoochApi::IntegrationApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration**](IntegrationApi.md#create_integration) | **POST** /apps/{appId}/integrations | 
[**create_integration_menu**](IntegrationApi.md#create_integration_menu) | **POST** /apps/{appId}/integrations/{integrationId}/menu | 
[**delete_integration**](IntegrationApi.md#delete_integration) | **DELETE** /apps/{appId}/integrations/{integrationId} | 
[**delete_integration_menu**](IntegrationApi.md#delete_integration_menu) | **DELETE** /apps/{appId}/integrations/{integrationId}/menu | 
[**get_integration**](IntegrationApi.md#get_integration) | **GET** /apps/{appId}/integrations/{integrationId} | 
[**get_integration_menu**](IntegrationApi.md#get_integration_menu) | **GET** /apps/{appId}/integrations/{integrationId}/menu | 
[**list_integrations**](IntegrationApi.md#list_integrations) | **GET** /apps/{appId}/integrations | 
[**update_integration_menu**](IntegrationApi.md#update_integration_menu) | **PUT** /apps/{appId}/integrations/{integrationId}/menu | 


# **create_integration**
> IntegrationResponse create_integration(app_id, integration_create_body)



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

app_id = "app_id_example" # String | Identifies the app.

integration_create_body = SmoochApi::IntegrationCreate.new # IntegrationCreate | Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 


begin
  result = api_instance.create_integration(app_id, integration_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->create_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_create_body** | [**IntegrationCreate**](IntegrationCreate.md)| Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration)  | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_integration_menu**
> MenuResponse create_integration_menu(app_id, integration_idmenu_create_body)



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

app_id = "app_id_example" # String | Identifies the app.

integration_id = "integration_id_example" # String | Identifies the integration.

menu_create_body = SmoochApi::Menu.new # Menu | Body for a createMenu request.


begin
  result = api_instance.create_integration_menu(app_id, integration_idmenu_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->create_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| Identifies the integration. | 
 **menu_create_body** | [**Menu**](Menu.md)| Body for a createMenu request. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration**
> delete_integration(app_id, integration_id)



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

app_id = "app_id_example" # String | Identifies the app.

integration_id = "integration_id_example" # String | Identifies the integration.


begin
  api_instance.delete_integration(app_id, integration_id)
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->delete_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| Identifies the integration. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration_menu**
> delete_integration_menu(app_id, integration_id)



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

app_id = "app_id_example" # String | Identifies the app.

integration_id = "integration_id_example" # String | Identifies the integration.


begin
  api_instance.delete_integration_menu(app_id, integration_id)
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->delete_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| Identifies the integration. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integration**
> IntegrationResponse get_integration(app_id, integration_id)



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

app_id = "app_id_example" # String | Identifies the app.

integration_id = "integration_id_example" # String | Identifies the integration.


begin
  result = api_instance.get_integration(app_id, integration_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->get_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| Identifies the integration. | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integration_menu**
> MenuResponse get_integration_menu(app_id, integration_id)



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

app_id = "app_id_example" # String | Identifies the app.

integration_id = "integration_id_example" # String | Identifies the integration.


begin
  result = api_instance.get_integration_menu(app_id, integration_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->get_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| Identifies the integration. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_integrations**
> ListIntegrationsResponse list_integrations(app_id, , opts)



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

app_id = "app_id_example" # String | Identifies the app.

opts = { 
  types: "types_example" # String | List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types=*twilio*,*line*. 
}

begin
  result = api_instance.list_integrations(app_id, , opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->list_integrations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **types** | **String**| List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types&#x3D;*twilio*,*line*.  | [optional] 

### Return type

[**ListIntegrationsResponse**](ListIntegrationsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_integration_menu**
> MenuResponse update_integration_menu(app_id, integration_idmenu_update_body)



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

app_id = "app_id_example" # String | Identifies the app.

integration_id = "integration_id_example" # String | Identifies the integration.

menu_update_body = SmoochApi::Menu.new # Menu | Body for a updateMenu request.


begin
  result = api_instance.update_integration_menu(app_id, integration_idmenu_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling IntegrationApi->update_integration_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| Identifies the integration. | 
 **menu_update_body** | [**Menu**](Menu.md)| Body for a updateMenu request. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



