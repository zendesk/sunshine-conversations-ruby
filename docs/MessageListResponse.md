# SunshineConversationsClient::MessageListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Array&lt;Message&gt;**](Message.md) | List of returned messages. | [optional] |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **links** | [**Links**](Links.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::MessageListResponse.new(
  messages: null,
  meta: null,
  links: null
)
```

