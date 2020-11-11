# SunshineConversationsClient::ConversationReadEventAllOfPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation in which the message was read. | [optional] 
**activity** | [**Activity**](Activity.md) | The activity that was sent. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ConversationReadEventAllOfPayload.new(conversation: null,
                                 activity: null)
```


