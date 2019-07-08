# SmoochApi::ConversationApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conversation_activity**](ConversationApi.md#conversation_activity) | **POST** /v1.1/apps/{appId}/appusers/{userId}/conversation/activity | 
[**delete_message**](ConversationApi.md#delete_message) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/messages/{messageId} | 
[**delete_messages**](ConversationApi.md#delete_messages) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/messages | 
[**get_messages**](ConversationApi.md#get_messages) | **GET** /v1.1/apps/{appId}/appusers/{userId}/messages | 
[**post_message**](ConversationApi.md#post_message) | **POST** /v1.1/apps/{appId}/appusers/{userId}/messages | 
[**reset_unread_count**](ConversationApi.md#reset_unread_count) | **POST** /v1.1/apps/{appId}/appusers/{userId}/conversation/read | 


# **conversation_activity**
> ActivityResponse conversation_activity(appId, userId, conversationActivityBody)



Notify Smooch when an app maker starts or stops typing a response.

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

api_instance = SmoochApi::ConversationApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

conversationActivityBody = SmoochApi::ConversationActivity.new # ConversationActivity | Body for a triggerConversationActivity request.


begin
  result = api_instance.conversation_activity(appId, userId, conversationActivityBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->conversation_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **conversationActivityBody** | [**ConversationActivity**](ConversationActivity.md)| Body for a triggerConversationActivity request. | 

### Return type

[**ActivityResponse**](ActivityResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_message**
> delete_message(appId, userId, messageId)



Deletes a single message.

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

api_instance = SmoochApi::ConversationApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

messageId = "messageId_example" # String | Identifies the message.


begin
  api_instance.delete_message(appId, userId, messageId)
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->delete_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **messageId** | **String**| Identifies the message. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_messages**
> delete_messages(appId, userId, )



Clears the message history for a user, permanently deleting all messages, but leaving any connections to Messaging Channels and Business Systems intact. These connections allow for the conversation to continue in the future, while still being associated to the same appUser. 

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

api_instance = SmoochApi::ConversationApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  api_instance.delete_messages(appId, userId, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->delete_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_messages**
> GetMessagesResponse get_messages(appId, userId, , opts)



Get the specified app user's messages.

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

api_instance = SmoochApi::ConversationApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

opts = { 
  before: "before_example", # String | Timestamp of message. The API will return 100 messages before the specified timestamp (excluding any messages with the provided timestamp).
  after: "after_example" # String | Timestamp of message. The API will return 100 messages after the specified timestamp (excluding any messages with the provided timestamp).
}

begin
  result = api_instance.get_messages(appId, userId, , opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->get_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **before** | **String**| Timestamp of message. The API will return 100 messages before the specified timestamp (excluding any messages with the provided timestamp). | [optional] 
 **after** | **String**| Timestamp of message. The API will return 100 messages after the specified timestamp (excluding any messages with the provided timestamp). | [optional] 

### Return type

[**GetMessagesResponse**](GetMessagesResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_message**
> MessageResponse post_message(appId, userId, messagePostBody)



Post a message to or from the app user.

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

api_instance = SmoochApi::ConversationApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

messagePostBody = SmoochApi::MessagePost.new # MessagePost | Body for a postMessage request. Additional arguments are necessary based on message type ([text](https://docs.smooch.io/rest/#text), [image](https://docs.smooch.io/rest/#image), [carousel](https://docs.smooch.io/rest/#carousel), [list](https://docs.smooch.io/rest/#list), [form](https://docs.smooch.io/rest/#form)) 


begin
  result = api_instance.post_message(appId, userId, messagePostBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->post_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **messagePostBody** | [**MessagePost**](MessagePost.md)| Body for a postMessage request. Additional arguments are necessary based on message type ([text](https://docs.smooch.io/rest/#text), [image](https://docs.smooch.io/rest/#image), [carousel](https://docs.smooch.io/rest/#carousel), [list](https://docs.smooch.io/rest/#list), [form](https://docs.smooch.io/rest/#form))  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_unread_count**
> reset_unread_count(appId, userId, )



Reset the unread count of the conversation to 0.

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

api_instance = SmoochApi::ConversationApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  api_instance.reset_unread_count(appId, userId, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->reset_unread_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



