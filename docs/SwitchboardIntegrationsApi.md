# SunshineConversationsClient::SwitchboardIntegrationsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_switchboard_integration**](SwitchboardIntegrationsApi.md#create_switchboard_integration) | **POST** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations | Create Switchboard Integration
[**delete_switchboard_integration**](SwitchboardIntegrationsApi.md#delete_switchboard_integration) | **DELETE** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations/{switchboardIntegrationId} | Delete Switchboard Integration
[**list_switchboard_integrations**](SwitchboardIntegrationsApi.md#list_switchboard_integrations) | **GET** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations | List Switchboard Integrations
[**update_switchboard_integration**](SwitchboardIntegrationsApi.md#update_switchboard_integration) | **PATCH** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations/{switchboardIntegrationId} | Update Switchboard Integration



## create_switchboard_integration

> SwitchboardIntegrationResponse create_switchboard_integration(app_id, switchboard_id, switchboard_integration_create_body)

Create Switchboard Integration

Create a switchboard integration.

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

api_instance = SunshineConversationsClient::SwitchboardIntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
switchboard_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard.
switchboard_integration_create_body = {"name":"bot","integrationType":"zd:agentWorkspace","deliverStandbyEvents":true,"nextSwitchboardIntegrationId":"5ef21b86e933b7355c11c606","messageHistoryCount":5} # SwitchboardIntegrationCreateBody | 
# Be sure to add the required body parameters

begin
  #Create Switchboard Integration
  result = api_instance.create_switchboard_integration(app_id, switchboard_id, switchboard_integration_create_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardIntegrationsApi->create_switchboard_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **switchboard_id** | **String**| Identifies the switchboard. | 
 **switchboard_integration_create_body** | [**SwitchboardIntegrationCreateBody**](SwitchboardIntegrationCreateBody.md)|  | 

### Return type

[**SwitchboardIntegrationResponse**](SwitchboardIntegrationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_switchboard_integration

> Object delete_switchboard_integration(app_id, switchboard_id, switchboard_integration_id)

Delete Switchboard Integration

Deletes the switchboard integration. If the deleted switchboard integration had an active status for some conversations, the default switchboard integration will replace it. Note that it is forbidden to delete a switchboard integration if it's the default one (a new one must be chosen first) or if another switchboard integration's `nextSwitchboardIntegrationId` refers to it. The integration that was linked to the deleted switchboard integration will start receiving all conversation events, regardless of the switchboard status.

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

api_instance = SunshineConversationsClient::SwitchboardIntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
switchboard_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard.
switchboard_integration_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard integration.
# Be sure to add the required body parameters

begin
  #Delete Switchboard Integration
  result = api_instance.delete_switchboard_integration(app_id, switchboard_id, switchboard_integration_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardIntegrationsApi->delete_switchboard_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **switchboard_id** | **String**| Identifies the switchboard. | 
 **switchboard_integration_id** | **String**| Identifies the switchboard integration. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_switchboard_integrations

> SwitchboardIntegrationListResponse list_switchboard_integrations(app_id, switchboard_id)

List Switchboard Integrations

Lists all switchboard integrations linked to the switchboard. 

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

api_instance = SunshineConversationsClient::SwitchboardIntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
switchboard_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard.
# Be sure to add the required body parameters

begin
  #List Switchboard Integrations
  result = api_instance.list_switchboard_integrations(app_id, switchboard_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardIntegrationsApi->list_switchboard_integrations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **switchboard_id** | **String**| Identifies the switchboard. | 

### Return type

[**SwitchboardIntegrationListResponse**](SwitchboardIntegrationListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_switchboard_integration

> SwitchboardIntegrationResponse update_switchboard_integration(app_id, switchboard_id, switchboard_integration_id, switchboard_integration_update_body)

Update Switchboard Integration

Updates a switchboard integration record.

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

api_instance = SunshineConversationsClient::SwitchboardIntegrationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
switchboard_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard.
switchboard_integration_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard integration.
switchboard_integration_update_body = {"deliverStandbyEvents":true,"nextSwitchboardIntegrationId":"5ef21b86e933b7355c11c606","messageHistoryCount":5} # SwitchboardIntegrationUpdateBody | 
# Be sure to add the required body parameters

begin
  #Update Switchboard Integration
  result = api_instance.update_switchboard_integration(app_id, switchboard_id, switchboard_integration_id, switchboard_integration_update_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardIntegrationsApi->update_switchboard_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **switchboard_id** | **String**| Identifies the switchboard. | 
 **switchboard_integration_id** | **String**| Identifies the switchboard integration. | 
 **switchboard_integration_update_body** | [**SwitchboardIntegrationUpdateBody**](SwitchboardIntegrationUpdateBody.md)|  | 

### Return type

[**SwitchboardIntegrationResponse**](SwitchboardIntegrationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

