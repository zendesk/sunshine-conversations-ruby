# SunshineConversationsClient::ActivitiesApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_activity**](ActivitiesApi.md#post_activity) | **POST** /v2/apps/{appId}/conversations/{conversationId}/activity | Post Activity



## post_activity

> Object post_activity(app_id, conversation_id, activity_post)

Post Activity

Notify Sunshine Conversations of different conversation activities. Supported activity types are: * Typing activity * Conversation read event 

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

api_instance = SunshineConversationsClient::ActivitiesApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
activity_post = {"author":{"type":"user","userId":"5963c0d619a30a2e00de36b8"},"type":"conversation:read"} # ActivityPost | 
# Be sure to add the required body parameters

begin
  #Post Activity
  result = api_instance.post_activity(app_id, conversation_id, activity_post)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ActivitiesApi->post_activity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **activity_post** | [**ActivityPost**](ActivityPost.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

