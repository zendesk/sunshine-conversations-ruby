# SunshineConversationsClient::ConversationLeaveEventAllOfPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation in which the user was removed. | [optional] 
**user** | [**UserTruncated**](UserTruncated.md) | The user that left the conversation. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ConversationLeaveEventAllOfPayload.new(conversation: null,
                                 user: null)
```


