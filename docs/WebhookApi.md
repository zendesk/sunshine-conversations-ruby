# SmoochApi::WebhookApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhookApi.md#create_webhook) | **POST** /apps/{appId}/webhooks | 
[**delete_webhook**](WebhookApi.md#delete_webhook) | **DELETE** /apps/{appId}/webhooks/{webhookId} | 
[**get_webhook**](WebhookApi.md#get_webhook) | **GET** /apps/{appId}/webhooks/{webhookId} | 
[**list_webhooks**](WebhookApi.md#list_webhooks) | **GET** /apps/{appId}/webhooks | 
[**update_webhook**](WebhookApi.md#update_webhook) | **PUT** /apps/{appId}/webhooks/{webhookId} | 


# **create_webhook**
> WebhookResponse create_webhook(app_id, webhook_create_body)



Create a webhook for the specified app.

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

api_instance = SmoochApi::WebhookApi.new

app_id = "app_id_example" # String | Identifies the app.

webhook_create_body = SmoochApi::WebhookCreate.new # WebhookCreate | Body for a createWebhook request. 


begin
  result = api_instance.create_webhook(app_id, webhook_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **webhook_create_body** | [**WebhookCreate**](WebhookCreate.md)| Body for a createWebhook request.  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_webhook**
> delete_webhook(app_id, webhook_id)



Delete the specified webhook.

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

api_instance = SmoochApi::WebhookApi.new

app_id = "app_id_example" # String | Identifies the app.

webhook_id = "webhook_id_example" # String | Identifies the webhook.


begin
  api_instance.delete_webhook(app_id, webhook_id)
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **webhook_id** | **String**| Identifies the webhook. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhook**
> WebhookResponse get_webhook(app_id, webhook_id)



Get the specified webhook.

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

api_instance = SmoochApi::WebhookApi.new

app_id = "app_id_example" # String | Identifies the app.

webhook_id = "webhook_id_example" # String | Identifies the webhook.


begin
  result = api_instance.get_webhook(app_id, webhook_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **webhook_id** | **String**| Identifies the webhook. | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_webhooks**
> ListWebhooksResponse list_webhooks(app_id, )



List webhooks for the specified app.

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

api_instance = SmoochApi::WebhookApi.new

app_id = "app_id_example" # String | Identifies the app.


begin
  result = api_instance.list_webhooks(app_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->list_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**ListWebhooksResponse**](ListWebhooksResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_webhook**
> WebhookResponse update_webhook(app_id, webhook_idwebhook_update_body)



Update the specified webhook.

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

api_instance = SmoochApi::WebhookApi.new

app_id = "app_id_example" # String | Identifies the app.

webhook_id = "webhook_id_example" # String | Identifies the webhook.

webhook_update_body = SmoochApi::WebhookUpdate.new # WebhookUpdate | Body for an updateWebhook request. 


begin
  result = api_instance.update_webhook(app_id, webhook_idwebhook_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling WebhookApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **webhook_id** | **String**| Identifies the webhook. | 
 **webhook_update_body** | [**WebhookUpdate**](WebhookUpdate.md)| Body for an updateWebhook request.  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



