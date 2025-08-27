# SunshineConversationsClient::Integration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the integration. | [optional][readonly] |
| **type** | **String** |  |  |
| **status** | [**Status**](Status.md) |  | [optional] |
| **display_name** | **String** | A human-friendly name used to identify the integration. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Integration.new(
  id: 5e4af71a81966cfff3ef6550,
  type: android,
  status: null,
  display_name: Channel name
)
```

