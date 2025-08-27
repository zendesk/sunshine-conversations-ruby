# SunshineConversationsClient::UserMergeEventAllOfPayloadMergedUsers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **surviving** | [**User**](User.md) | The user that now represents the merged user object. | [optional] |
| **discarded** | [**User**](User.md) | The user that was unified into the surviving user object. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::UserMergeEventAllOfPayloadMergedUsers.new(
  surviving: null,
  discarded: null
)
```

