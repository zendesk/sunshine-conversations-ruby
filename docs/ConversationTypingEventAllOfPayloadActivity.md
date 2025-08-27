# SunshineConversationsClient::ConversationTypingEventAllOfPayloadActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of activity. | [optional] |
| **source** | [**SourceWebhook**](SourceWebhook.md) | The source of the activity. | [optional] |
| **author** | [**AuthorWebhook**](AuthorWebhook.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationTypingEventAllOfPayloadActivity.new(
  type: null,
  source: null,
  author: null
)
```

