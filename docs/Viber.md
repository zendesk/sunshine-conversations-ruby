# SunshineConversationsClient::Viber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] |
| **type** | **String** | To configure a Viber integration, acquire the Viber Public Account token from the user and call the Create Integration endpoint.  | [optional][default to &#39;viber&#39;] |
| **token** | **String** | Viber Public Account token. |  |
| **uri** | **String** | Unique URI of the Viber account. | [optional][readonly] |
| **account_id** | **String** | Unique ID of the Viber account. | [optional][readonly] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Viber.new(
  default_responder_id: null,
  default_responder: null,
  type: null,
  token: 445da6az1s345z78-dazcczb2542zv51a-e0vc5fva17480im9,
  uri: null,
  account_id: null
)
```

