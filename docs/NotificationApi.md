# SmoochApi::NotificationApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_notification**](NotificationApi.md#post_notification) | **POST** /v1/apps/{appId}/notifications | 


# **post_notification**
> NotificationResponse post_notification(appId, notificationPostBody)



Post a notification to an externalId.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure HTTP basic authorization (recommended): basicAuth
  config.username = 'API_KEY_ID'
  config.password = 'API_KEY_SECRET'


  # OR

  # Configure API key authorization (alternative): jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::NotificationApi.new

appId = "appId_example" # String | Identifies the app.

notificationPostBody = SmoochApi::NotificationPost.new # NotificationPost | Body for a postNotification request. 


begin
  result = api_instance.post_notification(appId, notificationPostBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling NotificationApi->post_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **notificationPostBody** | [**NotificationPost**](NotificationPost.md)| Body for a postNotification request.  | 

### Return type

[**NotificationResponse**](NotificationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



