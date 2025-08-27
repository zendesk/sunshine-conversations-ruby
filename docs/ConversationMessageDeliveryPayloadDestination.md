# SunshineConversationsClient::ConversationMessageDeliveryPayloadDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | An identifier for the channel to which a message was sent to. May include one of \&quot;web\&quot;, \&quot;ios\&quot;, \&quot;android\&quot;, \&quot;messenger\&quot;, \&quot;viber\&quot;, \&quot;telegram\&quot;, \&quot;wechat\&quot;, \&quot;line\&quot;, \&quot;twilio\&quot;, \&quot;api\&quot;, \&quot;notification\&quot;, or any other channel. | [optional] |
| **integration_id** | **String** | Identifier indicating which integration the message was sent to. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationMessageDeliveryPayloadDestination.new(
  type: null,
  integration_id: null
)
```

