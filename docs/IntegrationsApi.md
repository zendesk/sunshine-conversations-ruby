# SunshineConversationsClient::IntegrationsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration**](IntegrationsApi.md#create_integration) | **POST** /v2/apps/{appId}/integrations | Create Integration
[**delete_integration**](IntegrationsApi.md#delete_integration) | **DELETE** /v2/apps/{appId}/integrations/{integrationId} | Delete Integration
[**get_integration**](IntegrationsApi.md#get_integration) | **GET** /v2/apps/{appId}/integrations/{integrationId} | Get Integration
[**list_integrations**](IntegrationsApi.md#list_integrations) | **GET** /v2/apps/{appId}/integrations | List Integrations
[**update_integration**](IntegrationsApi.md#update_integration) | **PATCH** /v2/apps/{appId}/integrations/{integrationId} | Update Integration



## create_integration

> IntegrationResponse create_integration(app_id, integration)

Create Integration

The Create Integration endpoint allows you to provision apps with front-end messaging channels. Selecting a `custom` integration allows the creation of webhooks.

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

api_instance = SunshineConversationsClient::IntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration = SunshineConversationsClient::Integration.new # Integration | 
# Be sure to add the required body parameters

begin
  #Create Integration
  result = api_instance.create_integration(app_id, integration)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling IntegrationsApi->create_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration** | [**Integration**](Integration.md)|  | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_integration

> Object delete_integration(app_id, integration_id)

Delete Integration

Delete the specified integration.

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

api_instance = SunshineConversationsClient::IntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
# Be sure to add the required body parameters

begin
  #Delete Integration
  result = api_instance.delete_integration(app_id, integration_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration

> IntegrationResponse get_integration(app_id, integration_id)

Get Integration

Get integration.

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

api_instance = SunshineConversationsClient::IntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
# Be sure to add the required body parameters

begin
  #Get Integration
  result = api_instance.get_integration(app_id, integration_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_integrations

> IntegrationListResponse list_integrations(app_id, opts)

List Integrations

List available integrations. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits). ```shell /v2/apps/:appId/integrations?page[after]=5e1606762556d93e9c176f69&page[size]=10&filter[types]=custom,web ``` 

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

api_instance = SunshineConversationsClient::IntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
# Be sure to add the required body parameters
opts = {
  page: SunshineConversationsClient::Page.new, # Page | Contains parameters for applying cursor pagination.
  filter: SunshineConversationsClient::IntegrationListFilter.new # IntegrationListFilter | Contains parameters for filtering the results.
}

begin
  #List Integrations
  result = api_instance.list_integrations(app_id, opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling IntegrationsApi->list_integrations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **page** | [**Page**](.md)| Contains parameters for applying cursor pagination. | [optional] 
 **filter** | [**IntegrationListFilter**](.md)| Contains parameters for filtering the results. | [optional] 

### Return type

[**IntegrationListResponse**](IntegrationListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_integration

> IntegrationResponse update_integration(app_id, integration_id, integration_update)

Update Integration

Allows you to update certain fields of existing integrations. If updating a specific property is not supported, you must delete the integration and re-create it with the new data.

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

api_instance = SunshineConversationsClient::IntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
integration_id = '029c31f25a21b47effd7be90' # String | The id of the integration.
integration_update = SunshineConversationsClient::IntegrationUpdate.new # IntegrationUpdate | 
# Be sure to add the required body parameters

begin
  #Update Integration
  result = api_instance.update_integration(app_id, integration_id, integration_update)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling IntegrationsApi->update_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **integration_update** | [**IntegrationUpdate**](IntegrationUpdate.md)|  | 

### Return type

[**IntegrationResponse**](IntegrationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

