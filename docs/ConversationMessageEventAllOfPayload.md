# SunshineConversationsClient::ConversationMessageEventAllOfPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation in which the message was sent. | [optional] 
**message** | [**MessageWebhook**](MessageWebhook.md) | The message that was sent. | [optional] 
**recent_notifications** | [**Array&lt;MessageWebhook&gt;**](MessageWebhook.md) | Messages sent with the Notification API since the last user message. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ConversationMessageEventAllOfPayload.new(conversation: null,
                                 message: null,
                                 recent_notifications: null)
```


