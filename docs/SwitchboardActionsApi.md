# SunshineConversationsClient::SwitchboardActionsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accept_control**](SwitchboardActionsApi.md#accept_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/acceptControl | Accept Control
[**offer_control**](SwitchboardActionsApi.md#offer_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/offerControl | Offer Control
[**pass_control**](SwitchboardActionsApi.md#pass_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/passControl | Pass Control
[**release_control**](SwitchboardActionsApi.md#release_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/releaseControl | Release Control



## accept_control

> Object accept_control(app_id, conversation_id, accept_control_body)

Accept Control

The acceptControl action transfers the control of the conversation to the pending switchboard integration. When using integration auth scope, a 403 is returned if the pending switchboard integration is not the authenticated integration.

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

api_instance = SunshineConversationsClient::SwitchboardActionsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
accept_control_body = SunshineConversationsClient::AcceptControlBody.new # AcceptControlBody | 
# Be sure to add the required body parameters

begin
  #Accept Control
  result = api_instance.accept_control(app_id, conversation_id, accept_control_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardActionsApi->accept_control: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **accept_control_body** | [**AcceptControlBody**](AcceptControlBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## offer_control

> Object offer_control(app_id, conversation_id, offer_control_body)

Offer Control

The offerControl action will invite a switchboard integration to accept control of the conversation (changing its status to pending), and trigger a webhook signal to that integration indicating that they have been offered control of the conversation. Invalidates previous offerControl actions.

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

api_instance = SunshineConversationsClient::SwitchboardActionsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
offer_control_body = SunshineConversationsClient::OfferControlBody.new # OfferControlBody | 
# Be sure to add the required body parameters

begin
  #Offer Control
  result = api_instance.offer_control(app_id, conversation_id, offer_control_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardActionsApi->offer_control: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **offer_control_body** | [**OfferControlBody**](OfferControlBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pass_control

> Object pass_control(app_id, conversation_id, pass_control_body)

Pass Control

Mark the named switchboard integration as active and transition all the other switchboard integrations to standby status.

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

api_instance = SunshineConversationsClient::SwitchboardActionsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
pass_control_body = SunshineConversationsClient::PassControlBody.new # PassControlBody | 
# Be sure to add the required body parameters

begin
  #Pass Control
  result = api_instance.pass_control(app_id, conversation_id, pass_control_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardActionsApi->pass_control: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **conversation_id** | **String**| Identifies the conversation. | 
 **pass_control_body** | [**PassControlBody**](PassControlBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_control

> Object release_control(app_id, conversation_id)

Release Control

The releaseControl action releases the control of the conversation by nullifying its switchboard state. When using integration auth scope, a 403 is returned if the active switchboard integration is not the authenticated integration.

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

api_instance = SunshineConversationsClient::SwitchboardActionsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
# Be sure to add the required body parameters

begin
  #Release Control
  result = api_instance.release_control(app_id, conversation_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardActionsApi->release_control: #{e}"
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

