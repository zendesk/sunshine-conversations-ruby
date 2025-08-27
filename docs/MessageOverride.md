# SunshineConversationsClient::MessageOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apple** | [**AppleMessageOverridePayload**](AppleMessageOverridePayload.md) |  | [optional] |
| **line** | [**MessageOverridePayload**](MessageOverridePayload.md) |  | [optional] |
| **messenger** | [**MessageOverridePayload**](MessageOverridePayload.md) |  | [optional] |
| **whatsapp** | [**MessageOverridePayload**](MessageOverridePayload.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::MessageOverride.new(
  apple: null,
  line: null,
  messenger: null,
  whatsapp: null
)
```

