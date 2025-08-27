# SunshineConversationsClient::ConversationJoinEventAllOfPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation in which the user was added. | [optional] |
| **user** | [**UserTruncated**](UserTruncated.md) | The user that joined the conversation. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationJoinEventAllOfPayload.new(
  conversation: null,
  user: null
)
```

