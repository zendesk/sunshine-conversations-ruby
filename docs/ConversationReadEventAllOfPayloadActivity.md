# SunshineConversationsClient::ConversationReadEventAllOfPayloadActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of activity. | [optional][default to &#39;conversation:read&#39;] |
| **source** | [**SourceWebhook**](SourceWebhook.md) | The source of the activity. | [optional] |
| **author** | [**AuthorWebhook**](AuthorWebhook.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationReadEventAllOfPayloadActivity.new(
  type: null,
  source: null,
  author: null
)
```

