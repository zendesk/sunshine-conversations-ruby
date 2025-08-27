# SunshineConversationsClient::SwitchboardIntegrationCreateBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Identifier for use in control transfer protocols. Restricted to alphanumeric characters, &#x60;-&#x60; and &#x60;_&#x60;. |  |
| **integration_id** | **String** | The id of the integration to link to the switchboard integration. Must be used when linking a custom integration. One of &#x60;integrationId&#x60; or &#x60;integrationType&#x60; must be provided. | [optional] |
| **integration_type** | **String** | The type of the integration to link to the switchboard integration. Must be used when linking an OAuth integration. One of &#x60;integrationId&#x60; or &#x60;integrationType&#x60; must be provided. | [optional] |
| **deliver_standby_events** | **Boolean** | Setting to determine if webhooks should be sent when the switchboard integration is not in control of a conversation (standby status) | [optional] |
| **next_switchboard_integration_id** | **String** | The switchboard integration id to which control of a conversation is passed / offered by default. | [optional] |
| **message_history_count** | **Integer** | Number of messages to include in the message history context. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::SwitchboardIntegrationCreateBody.new(
  name: bot,
  integration_id: 5ef21b86e933b7355c11c605,
  integration_type: zd:agentWorkspace,
  deliver_standby_events: null,
  next_switchboard_integration_id: 5ef21b86e933b7355c11c606,
  message_history_count: 5
)
```

