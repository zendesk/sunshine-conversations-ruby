# SunshineConversationsClient::LocationMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of message. | [default to &#39;location&#39;] |
| **text** | **String** | The fallback text message used when location messages are not supported by the channel. | [optional][readonly] |
| **block_chat_input** | **Boolean** | When set to true, the chat input will be disabled on supported client implementations when the message is the most recent one in the history. Can be used for guided flows or to temporarily disable the user&#39;s ability to send messages in the conversation. | [optional] |
| **coordinates** | [**LocationMessageCoordinates**](LocationMessageCoordinates.md) |  |  |
| **location** | [**LocationMessageLocation**](LocationMessageLocation.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::LocationMessage.new(
  type: null,
  text: null,
  block_chat_input: null,
  coordinates: null,
  location: null
)
```

