# SunshineConversationsClient::ConversationListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | [**Array&lt;Conversation&gt;**](Conversation.md) | List of returned conversations. | [optional] |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **links** | [**Links**](Links.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationListResponse.new(
  conversations: null,
  meta: null,
  links: null
)
```

