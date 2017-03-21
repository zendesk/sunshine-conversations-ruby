# SmoochApi::IntegrationApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration**](IntegrationApi.md#create_integration) | **POST** /apps/{appId}/integrations | 
[**list_integrations**](IntegrationApi.md#list_integrations) | **GET** /apps/{appId}/integrations | 


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



