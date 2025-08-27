# SunshineConversationsClient::MessagesApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_messages**](MessagesApi.md#delete_all_messages) | **DELETE** /v2/apps/{appId}/conversations/{conversationId}/messages | Delete All Messages
[**delete_message**](MessagesApi.md#delete_message) | **DELETE** /v2/apps/{appId}/conversations/{conversationId}/messages/{messageId} | Delete Message
[**list_messages**](MessagesApi.md#list_messages) | **GET** /v2/apps/{appId}/conversations/{conversationId}/messages | List Messages
[**post_message**](MessagesApi.md#post_message) | **POST** /v2/apps/{appId}/conversations/{conversationId}/messages | Post Message



## delete_all_messages

> Object delete_all_messages(app_id, conversation_id)

Delete All Messages

Delete all messages of a particular conversation.

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

api_instance = SunshineConversationsClient::MessagesApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
# Be sure to add the required body parameters

begin
  #Delete All Messages
  result = api_instance.delete_all_messages(app_id, conversation_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling MessagesApi->delete_all_messages: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_message

> Object delete_message(app_id, conversation_id, message_id)

Delete Message

Delete a single message of a particular conversation.

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

api_instance = SunshineConversationsClient::MessagesApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
message_id = 029c31f25a21b47effd7be90 # String | The id of the message.
# Be sure to add the required body parameters

begin
  #Delete Message
  result = api_instance.delete_message(app_id, conversation_id, message_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling MessagesApi->delete_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **message_id** | **String**| The id of the message. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_messages

> MessageListResponse list_messages(app_id, conversation_id, opts)

List Messages

List all messages for a particular conversation. This API is paginated through [cursor pagination](#section/Introduction/API-Pagination-and-Records-Limits), in the _backwards_ direction, with the most recent (i.e. last) page of messages being returned by default. The `hasMore` flag indicates whether more messages exist in the direction you are currently paginating through. To page backwards in the history, use the `beforeCursor` or follow the `prev` link. The page size limit is fixed at 100 messages per page.  ```shell /v2/apps/:appId/conversations/:conversationId/messages?page[before]=5f32b88acf6bf25073b2be56 ``` 

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

api_instance = SunshineConversationsClient::MessagesApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
# Be sure to add the required body parameters
opts = {
  page:  # Page | Contains parameters for applying cursor pagination.
}

begin
  #List Messages
  result = api_instance.list_messages(app_id, conversation_id, opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling MessagesApi->list_messages: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **page** | [**Page**](.md)| Contains parameters for applying cursor pagination. | [optional] 

### Return type

[**MessageListResponse**](MessageListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_message

> MessagePostResponse post_message(app_id, conversation_id, message_post)

Post Message

Send a message in a particular conversation.

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

api_instance = SunshineConversationsClient::MessagesApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
message_post =  # MessagePost | 
# Be sure to add the required body parameters

begin
  #Post Message
  result = api_instance.post_message(app_id, conversation_id, message_post)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling MessagesApi->post_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **message_post** | [**MessagePost**](MessagePost.md)|  | 

### Return type

[**MessagePostResponse**](MessagePostResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

