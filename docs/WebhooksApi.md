# SunshineConversationsClient::WebhooksApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v2/apps/{appId}/integrations/{integrationId}/webhooks | Create Webhook
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId} | Delete Webhook
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId} | Get Webhook
[**list_webhooks**](WebhooksApi.md#list_webhooks) | **GET** /v2/apps/{appId}/integrations/{integrationId}/webhooks | List Webhooks
[**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId} | Update Webhook



## create_webhook

> WebhookResponse create_webhook(app_id, integration_id, webhook_create_body)

Create Webhook

Creates a new webhook associated with a Sunshine Conversations Connect integration or a custom integration.

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

api_instance = SunshineConversationsClient::WebhooksApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
integration_id = 029c31f25a21b47effd7be90 # String | The id of the integration.
webhook_create_body =  # WebhookCreateBody | 
# Be sure to add the required body parameters

begin
  #Create Webhook
  result = api_instance.create_webhook(app_id, integration_id, webhook_create_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **webhook_create_body** | [**WebhookCreateBody**](WebhookCreateBody.md)|  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> Object delete_webhook(app_id, integration_id, webhook_id)

Delete Webhook

Deletes the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.

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

api_instance = SunshineConversationsClient::WebhooksApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
integration_id = 029c31f25a21b47effd7be90 # String | The id of the integration.
webhook_id = 029c31f25a21b47effd7be90 # String | The id of the webhook.
# Be sure to add the required body parameters

begin
  #Delete Webhook
  result = api_instance.delete_webhook(app_id, integration_id, webhook_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **webhook_id** | **String**| The id of the webhook. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> WebhookResponse get_webhook(app_id, integration_id, webhook_id)

Get Webhook

Gets the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.

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

api_instance = SunshineConversationsClient::WebhooksApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
integration_id = 029c31f25a21b47effd7be90 # String | The id of the integration.
webhook_id = 029c31f25a21b47effd7be90 # String | The id of the webhook.
# Be sure to add the required body parameters

begin
  #Get Webhook
  result = api_instance.get_webhook(app_id, integration_id, webhook_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **webhook_id** | **String**| The id of the webhook. | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks

> WebhookListResponse list_webhooks(app_id, integration_id)

List Webhooks

Lists all webhooks for a given Sunshine Conversations Connect integration or custom integration.

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

api_instance = SunshineConversationsClient::WebhooksApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
integration_id = 029c31f25a21b47effd7be90 # String | The id of the integration.
# Be sure to add the required body parameters

begin
  #List Webhooks
  result = api_instance.list_webhooks(app_id, integration_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling WebhooksApi->list_webhooks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 

### Return type

[**WebhookListResponse**](WebhookListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> WebhookResponse update_webhook(app_id, integration_id, webhook_id, webhook_body)

Update Webhook

Updates the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.

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

api_instance = SunshineConversationsClient::WebhooksApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
integration_id = 029c31f25a21b47effd7be90 # String | The id of the integration.
webhook_id = 029c31f25a21b47effd7be90 # String | The id of the webhook.
webhook_body =  # WebhookBody | 
# Be sure to add the required body parameters

begin
  #Update Webhook
  result = api_instance.update_webhook(app_id, integration_id, webhook_id, webhook_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **integration_id** | **String**| The id of the integration. | 
 **webhook_id** | **String**| The id of the webhook. | 
 **webhook_body** | [**WebhookBody**](WebhookBody.md)|  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

