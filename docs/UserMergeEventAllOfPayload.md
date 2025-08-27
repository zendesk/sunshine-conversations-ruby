# SunshineConversationsClient::UserMergeEventAllOfPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merged_users** | [**UserMergeEventAllOfPayloadMergedUsers**](UserMergeEventAllOfPayloadMergedUsers.md) |  | [optional] |
| **merged_conversations** | [**UserMergeEventAllOfPayloadMergedConversations**](UserMergeEventAllOfPayloadMergedConversations.md) |  | [optional] |
| **merged_clients** | [**UserMergeEventAllOfPayloadMergedClients**](UserMergeEventAllOfPayloadMergedClients.md) |  | [optional] |
| **discarded_metadata** | **Hash&lt;String, Object&gt;** | A flat object with the set of metadata properties that were discarded when merging the two users. This should contain values only if the combined metadata fields exceed the 4KB limit. | [optional] |
| **reason** | **String** | The reason for which the users merged. * &#x60;api&#x60; - The users were merged using the API. * &#x60;channelLinking&#x60; - The users were merged as a result of initiating a channel link. * &#x60;sdkLogin&#x60; - The users were merged as a result of logging into an SDK device.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::UserMergeEventAllOfPayload.new(
  merged_users: null,
  merged_conversations: null,
  merged_clients: null,
  discarded_metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
  reason: null
)
```

