# SunshineConversationsClient::ConversationTypingEventAllOfPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation in which the activity was sent. | [optional] 
**activity** | [**Activity**](Activity.md) | The activity that was sent. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ConversationTypingEventAllOfPayload.new(conversation: null,
                                 activity: null)
```


