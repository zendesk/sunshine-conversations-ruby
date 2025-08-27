# SunshineConversationsClient::QuotedMessageMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of quotedMessage - a complete Sunshine Conversations message is provided. | [default to &#39;message&#39;] |
| **message** | [**Message**](Message.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::QuotedMessageMessage.new(
  type: null,
  message: null
)
```

