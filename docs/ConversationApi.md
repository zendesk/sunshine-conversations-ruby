# SmoochApi::ConversationApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_messages**](ConversationApi.md#delete_messages) | **DELETE** /v1/apps/{appId}/appusers/{userId}/messages | 
[**get_messages**](ConversationApi.md#get_messages) | **GET** /v1/apps/{appId}/appusers/{userId}/messages | 
[**post_message**](ConversationApi.md#post_message) | **POST** /v1/apps/{appId}/appusers/{userId}/messages | 
[**reset_unread_count**](ConversationApi.md#reset_unread_count) | **POST** /v1/apps/{appId}/appusers/{userId}/conversation/read | 
[**trigger_typing_activity**](ConversationApi.md#trigger_typing_activity) | **POST** /v1/apps/{appId}/appusers/{userId}/conversation/activity | 


# **delete_messages**
> delete_messages(app_id, user_id, )



Clears the message history for a user, permanently deleting all messages, but leaving any connections to Messaging Channels and Business Systems intact. These connections allow for the conversation to continue in the future, while still being associated to the same appUser. 

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

api_instance = SmoochApi::ConversationApi.new

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  api_instance.delete_messages(app_id, user_id, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->delete_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_messages**
> GetMessagesResponse get_messages(app_id, user_id, , opts)



Get the specified app user's messages.

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

api_instance = SmoochApi::ConversationApi.new

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

opts = { 
  before: "before_example", # String | Timestamp of message. The API will return 100 messages before the specified timestamp (excluding any messages with the provided timestamp).
  after: "after_example" # String | Timestamp of message. The API will return 100 messages after the specified timestamp (excluding any messages with the provided timestamp).
}

begin
  result = api_instance.get_messages(app_id, user_id, , opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->get_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
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
> MessageResponse post_message(app_id, user_id, message_post_body)



Post a message to or from the app user.

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

api_instance = SmoochApi::ConversationApi.new

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

message_post_body = SmoochApi::MessagePost.new # MessagePost | Body for a postMessage request. Additional arguments are necessary based on message type ([text](https://docs.smooch.io/rest#text-message), [image](https://docs.smooch.io/rest#image-message), [carousel](https://docs.smooch.io/rest#carousel-message), [list](https://docs.smooch.io/rest#list-message)) 


begin
  result = api_instance.post_message(app_id, user_id, message_post_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->post_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **message_post_body** | [**MessagePost**](MessagePost.md)| Body for a postMessage request. Additional arguments are necessary based on message type ([text](https://docs.smooch.io/rest#text-message), [image](https://docs.smooch.io/rest#image-message), [carousel](https://docs.smooch.io/rest#carousel-message), [list](https://docs.smooch.io/rest#list-message))  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_unread_count**
> reset_unread_count(app_id, user_id, )



Reset the unread count of the conversation to 0.

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

api_instance = SmoochApi::ConversationApi.new

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  api_instance.reset_unread_count(app_id, user_id, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->reset_unread_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **trigger_typing_activity**
> trigger_typing_activity(app_id, user_id, typing_activity_trigger_body)



Notify Smooch when an app maker starts or stops typing a response.

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

api_instance = SmoochApi::ConversationApi.new

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

typing_activity_trigger_body = SmoochApi::TypingActivityTrigger.new # TypingActivityTrigger | Body for a triggerTypingActivity request.


begin
  api_instance.trigger_typing_activity(app_id, user_id, typing_activity_trigger_body)
rescue SmoochApi::ApiError => e
  puts "Exception when calling ConversationApi->trigger_typing_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **typing_activity_trigger_body** | [**TypingActivityTrigger**](TypingActivityTrigger.md)| Body for a triggerTypingActivity request. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



