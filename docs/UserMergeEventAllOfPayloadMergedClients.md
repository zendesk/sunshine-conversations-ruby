# SunshineConversationsClient::UserMergeEventAllOfPayloadMergedClients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **surviving** | [**Client**](Client.md) | The client that already existed before the merge started. | [optional] |
| **discarded** | [**Client**](Client.md) | The pending client that was discarded during the merge event. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::UserMergeEventAllOfPayloadMergedClients.new(
  surviving: null,
  discarded: null
)
```

