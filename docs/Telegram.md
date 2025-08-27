# SunshineConversationsClient::Telegram

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] |
| **type** | **String** | To configure a Telegram integration, acquire the required information from the user and call the Create Integration endpoint.  | [optional][default to &#39;telegram&#39;] |
| **token** | **String** | Telegram Bot Token. |  |
| **username** | **String** | Username of the botId | [optional][readonly] |
| **bot_id** | **String** | A human-friendly name used to identify the integration. | [optional][readonly] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Telegram.new(
  default_responder_id: null,
  default_responder: null,
  type: null,
  token: 192033615:AAEuee2FS2JYKWfDlTulfygjaIGJi4s,
  username: null,
  bot_id: null
)
```

