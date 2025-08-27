# SunshineConversationsClient::UserMergeEventAllOfPayloadMergedConversations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **surviving** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation that now represents the merged conversation object. | [optional] |
| **discarded** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation that was unified into the surviving conversation object. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::UserMergeEventAllOfPayloadMergedConversations.new(
  surviving: null,
  discarded: null
)
```

