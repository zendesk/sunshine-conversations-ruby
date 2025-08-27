# SunshineConversationsClient::SwitchboardIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the switchboard integration. |  |
| **name** | **String** | Identifier for use in control transfer protocols. Restricted to alphanumeric characters, &#x60;-&#x60; and &#x60;_&#x60;. |  |
| **integration_id** | **String** | Id of the integration that should deliver events routed by the switchboard. |  |
| **integration_type** | **String** | Type of integration that should deliver events routed by the switchboard. If referencing an OAuth integration, the clientId issued by Sunshine Conversations during the OAuth partnership process will be the value of integrationType. |  |
| **deliver_standby_events** | **Boolean** | Setting to determine if webhooks should be sent when the switchboard integration is not in control of a conversation (standby status) |  |
| **next_switchboard_integration_id** | **String** | The switchboard integration id to which control of a conversation is passed / offered by default. | [optional] |
| **message_history_count** | **Integer** | Number of messages to include in the message history context. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::SwitchboardIntegration.new(
  id: 5ef21b86e933b7355c11c604,
  name: bot,
  integration_id: 5ef21b86e933b7355c11c605,
  integration_type: zd:agentWorkspace,
  deliver_standby_events: null,
  next_switchboard_integration_id: 5ef21b86e933b7355c11c606,
  message_history_count: 5
)
```

