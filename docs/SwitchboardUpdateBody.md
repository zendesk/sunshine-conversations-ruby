# SunshineConversationsClient::SwitchboardUpdateBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the switchboard is enabled. Allows creating the switchboard in a disabled state so that messages don&#39;t get lost or misrouted during switchboard configuration. When a switchboard is disabled, integrations linked to the switchboard will receive all events. | [optional] |
| **default_switchboard_integration_id** | **String** | The id of the switchboard integration that will be given control when a new conversation begins. It will also be used for conversations that existed before the switchboard was enabled. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::SwitchboardUpdateBody.new(
  enabled: null,
  default_switchboard_integration_id: 5ef21b132f21af34f088530e
)
```

