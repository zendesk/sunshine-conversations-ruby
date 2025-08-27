# SunshineConversationsClient::Source

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | An identifier for the channel from which a message originated. May include one of api, sdk, messenger, or any number of other channels. |  |
| **integration_id** | **String** | Identifier indicating which integration the message was sent from. For user messages only. | [optional] |
| **original_message_id** | **String** | Message identifier assigned by the originating channel. | [optional] |
| **original_message_timestamp** | **String** | A datetime string with the format &#x60;YYYY-MM-DDThh:mm:ss.SSSZ&#x60; representing when the third party channel received the message. | [optional] |
| **client** | [**Client**](Client.md) | The client from which the user authored the message or activity, if applicable. This field is not applicable in API responses, it is used only in webhook payloads if the &#x60;includeFullSource&#x60; option is enabled. | [optional] |
| **device** | [**Device**](Device.md) | The device from which the user authored the message or activity, if applicable. This field is not applicable in API responses, it is used only in webhook payloads if the &#x60;includeFullSource&#x60; option is enabled. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Source.new(
  type: ios,
  integration_id: de13bee15b51033b34162411,
  original_message_id: 5f40256af057d0000dda9bd7,
  original_message_timestamp: 2019-03-21T18:45:53.720Z,
  client: null,
  device: null
)
```

