# SunshineConversationsClient::ConversationsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_conversation**](ConversationsApi.md#create_conversation) | **POST** /v2/apps/{appId}/conversations | Create Conversation
[**delete_conversation**](ConversationsApi.md#delete_conversation) | **DELETE** /v2/apps/{appId}/conversations/{conversationId} | Delete Conversation
[**download_message_ref**](ConversationsApi.md#download_message_ref) | **POST** /v2/apps/{appId}/conversations/{conversationId}/download | Download Message Ref
[**get_conversation**](ConversationsApi.md#get_conversation) | **GET** /v2/apps/{appId}/conversations/{conversationId} | Get Conversation
[**list_conversations**](ConversationsApi.md#list_conversations) | **GET** /v2/apps/{appId}/conversations | List Conversations
[**update_conversation**](ConversationsApi.md#update_conversation) | **PATCH** /v2/apps/{appId}/conversations/{conversationId} | Update Conversation



## create_conversation

> ConversationResponse create_conversation(app_id, conversation_create_body)

Create Conversation

Create a conversation for the specified user(s).

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

api_instance = SunshineConversationsClient::ConversationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_create_body = SunshineConversationsClient::ConversationCreateBody.new # ConversationCreateBody | 
# Be sure to add the required body parameters

begin
  #Create Conversation
  result = api_instance.create_conversation(app_id, conversation_create_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ConversationsApi->create_conversation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_create_body** | [**ConversationCreateBody**](ConversationCreateBody.md)|  | 

### Return type

[**ConversationResponse**](ConversationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_conversation

> Object delete_conversation(app_id, conversation_id)

Delete Conversation

Delete an entire conversation record, along with its messages and attachments. Note that the default conversation cannot be deleted, but the messages contained [can be](#deleteAllMessages).

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

api_instance = SunshineConversationsClient::ConversationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
# Be sure to add the required body parameters

begin
  #Delete Conversation
  result = api_instance.delete_conversation(app_id, conversation_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ConversationsApi->delete_conversation: #{e}"
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


## download_message_ref

> Object download_message_ref(app_id, conversation_id, download_message_ref_body)

Download Message Ref

When a third party channel provides a reference of a data, this API can be used to download the reference and fetch the full data. Currently, only apple channel is supported.

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

api_instance = SunshineConversationsClient::ConversationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
download_message_ref_body = {"userId":"6e416caac6a5e9544e3fb6d7","apple":{"interactiveDataRef":{"url":"https://p61-content.icloud.com/M58C0A1A2EB62B6E899B4F28996E8DA229E1914295299C39944B2F2CA7482AE50.C01USN00","bid":"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.icloud.apps.messages.business.extension","key":"00c0d1827fdc858fe7b42421de1fb289c2ee0a9463d787ce4f118506f970bd6e38","signature":"81a619c81da5a01c6139219a5d20e17430c631e1eb","owner":"M58C0A2A1EB62B4E859B4F28996E8DA229E1914295299C39944B2F2CA7482AE50.C01USN00"}}} # DownloadMessageRefBody | 
# Be sure to add the required body parameters

begin
  #Download Message Ref
  result = api_instance.download_message_ref(app_id, conversation_id, download_message_ref_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ConversationsApi->download_message_ref: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **download_message_ref_body** | [**DownloadMessageRefBody**](DownloadMessageRefBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_conversation

> ConversationResponse get_conversation(app_id, conversation_id)

Get Conversation

Fetches an individual conversation.

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

api_instance = SunshineConversationsClient::ConversationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
# Be sure to add the required body parameters

begin
  #Get Conversation
  result = api_instance.get_conversation(app_id, conversation_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ConversationsApi->get_conversation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 

### Return type

[**ConversationResponse**](ConversationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversations

> ConversationListResponse list_conversations(app_id, filter, opts)

List Conversations

Lists all conversations that a user is part of. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits). ```shell /v2/apps/:appId/conversations?filter[userId]=42589ad070d43be9b00ff7e5 ``` 

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

api_instance = SunshineConversationsClient::ConversationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
filter = SunshineConversationsClient::ConversationListFilter.new # ConversationListFilter | Contains parameters for filtering the results.
# Be sure to add the required body parameters
opts = {
  page: SunshineConversationsClient::Page.new # Page | Contains parameters for applying cursor pagination.
}

begin
  #List Conversations
  result = api_instance.list_conversations(app_id, filter, opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ConversationsApi->list_conversations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **filter** | [**ConversationListFilter**](.md)| Contains parameters for filtering the results. | 
 **page** | [**Page**](.md)| Contains parameters for applying cursor pagination. | [optional] 

### Return type

[**ConversationListResponse**](ConversationListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_conversation

> ConversationResponse update_conversation(app_id, conversation_id, conversation_update_body)

Update Conversation

Updates a conversation record.

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

api_instance = SunshineConversationsClient::ConversationsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
conversation_update_body = SunshineConversationsClient::ConversationUpdateBody.new # ConversationUpdateBody | 
# Be sure to add the required body parameters

begin
  #Update Conversation
  result = api_instance.update_conversation(app_id, conversation_id, conversation_update_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ConversationsApi->update_conversation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **conversation_update_body** | [**ConversationUpdateBody**](ConversationUpdateBody.md)|  | 

### Return type

[**ConversationResponse**](ConversationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

