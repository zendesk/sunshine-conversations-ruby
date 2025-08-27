# SunshineConversationsClient::WebhookSubSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the webhook. | [optional] |
| **version** | **String** | Schema version of the payload delivered to this webhook (v2). | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::WebhookSubSchema.new(
  id: null,
  version: null
)
```

