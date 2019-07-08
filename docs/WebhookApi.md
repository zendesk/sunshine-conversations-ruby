# SmoochApi::WebhookApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhookApi.md#create_webhook) | **POST** /v1.1/apps/{appId}/webhooks | 
[**delete_webhook**](WebhookApi.md#delete_webhook) | **DELETE** /v1.1/apps/{appId}/webhooks/{webhookId} | 
[**get_webhook**](WebhookApi.md#get_webhook) | **GET** /v1.1/apps/{appId}/webhooks/{webhookId} | 
[**list_webhooks**](WebhookApi.md#list_webhooks) | **GET** /v1.1/apps/{appId}/webhooks | 
[**update_webhook**](WebhookApi.md#update_webhook) | **PUT** /v1.1/apps/{appId}/webhooks/{webhookId} | 


# **create_webhook**
> WebhookResponse create_webhook(appId, webhookCreateBody)



Create a webhook for the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|

  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::WebhookApi.new

appId = "appId_example" # String | Identifies the app.

webhookCreateBody = SmoochApi::WebhookCreate.new # WebhookCreate | Body for a createWebhook request. 


begin
  result = api_instance.create_webhook(appId, webhookCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **webhookCreateBody** | [**WebhookCreate**](WebhookCreate.md)| Body for a createWebhook request.  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_webhook**
> delete_webhook(appId, webhookId)



Delete the specified webhook.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|

  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::WebhookApi.new

appId = "appId_example" # String | Identifies the app.

webhookId = "webhookId_example" # String | Identifies the webhook.


begin
  api_instance.delete_webhook(appId, webhookId)
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **webhookId** | **String**| Identifies the webhook. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhook**
> WebhookResponse get_webhook(appId, webhookId)



Get the specified webhook.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|

  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::WebhookApi.new

appId = "appId_example" # String | Identifies the app.

webhookId = "webhookId_example" # String | Identifies the webhook.


begin
  result = api_instance.get_webhook(appId, webhookId)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **webhookId** | **String**| Identifies the webhook. | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_webhooks**
> ListWebhooksResponse list_webhooks(appId, )



List webhooks for the specified app.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|

  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::WebhookApi.new

appId = "appId_example" # String | Identifies the app.


begin
  result = api_instance.list_webhooks(appId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->list_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 

### Return type

[**ListWebhooksResponse**](ListWebhooksResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_webhook**
> WebhookResponse update_webhook(appId, webhookIdwebhookUpdateBody)



Update the specified webhook.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|

  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::WebhookApi.new

appId = "appId_example" # String | Identifies the app.

webhookId = "webhookId_example" # String | Identifies the webhook.

webhookUpdateBody = SmoochApi::WebhookUpdate.new # WebhookUpdate | Body for an updateWebhook request. 


begin
  result = api_instance.update_webhook(appId, webhookIdwebhookUpdateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **webhookId** | **String**| Identifies the webhook. | 
 **webhookUpdateBody** | [**WebhookUpdate**](WebhookUpdate.md)| Body for an updateWebhook request.  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



