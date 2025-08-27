# SunshineConversationsClient::ParticipantsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**join_conversation**](ParticipantsApi.md#join_conversation) | **POST** /v2/apps/{appId}/conversations/{conversationId}/join | Join Conversation
[**leave_conversation**](ParticipantsApi.md#leave_conversation) | **POST** /v2/apps/{appId}/conversations/{conversationId}/leave | Leave Conversation
[**list_participants**](ParticipantsApi.md#list_participants) | **GET** /v2/apps/{appId}/conversations/{conversationId}/participants | List Participants



## join_conversation

> ParticipantResponse join_conversation(app_id, conversation_id, participant_join_body)

Join Conversation

Adds a user to a conversation using either their userId or userExternalId. The endpoint only supports adding a participant to a sdkGroup conversation. 

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

api_instance = SunshineConversationsClient::ParticipantsApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
participant_join_body = {"userId":"67a11490f0305f4a391e9f8a","subscribeSDKClient":true} # ParticipantJoinBody | 
# Be sure to add the required body parameters

begin
  #Join Conversation
  result = api_instance.join_conversation(app_id, conversation_id, participant_join_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ParticipantsApi->join_conversation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **participant_join_body** | [**ParticipantJoinBody**](ParticipantJoinBody.md)|  | 

### Return type

[**ParticipantResponse**](ParticipantResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## leave_conversation

> Object leave_conversation(app_id, conversation_id, participant_leave_body)

Leave Conversation

Removes a user from a conversation using either their userId, userExternalId, or participantId. 

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

api_instance = SunshineConversationsClient::ParticipantsApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
participant_leave_body = {"userId":"67a11490f0305f4a391e9f8a"} # ParticipantLeaveBody | 
# Be sure to add the required body parameters

begin
  #Leave Conversation
  result = api_instance.leave_conversation(app_id, conversation_id, participant_leave_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ParticipantsApi->leave_conversation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **participant_leave_body** | [**ParticipantLeaveBody**](ParticipantLeaveBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_participants

> ParticipantListResponse list_participants(app_id, conversation_id, opts)

List Participants

Lists all the participants of a particular conversation. This API is paginated through [cursor pagination](#section/Introduction/API-Pagination-and-Records-Limits).  ```shell /v2/apps/:appId/conversations/:conversationId/participants?page[before]=26508c10541a4b0ff472e5e2 ``` 

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

api_instance = SunshineConversationsClient::ParticipantsApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
conversation_id = 029c31f25a21b47effd7be90 # String | Identifies the conversation.
# Be sure to add the required body parameters
opts = {
  page:  # Page | Contains parameters for applying cursor pagination.
}

begin
  #List Participants
  result = api_instance.list_participants(app_id, conversation_id, opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ParticipantsApi->list_participants: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **page** | [**Page**](.md)| Contains parameters for applying cursor pagination. | [optional] 

### Return type

[**ParticipantListResponse**](ParticipantListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

