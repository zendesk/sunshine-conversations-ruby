# SunshineConversationsClient::MatchCriteriaBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The channel type. |  |
| **integration_id** | **String** | The ID of the integration to link. Must match the provided type. |  |
| **primary** | **Boolean** | Flag indicating whether the client will become the primary for the target conversation once linking is complete. | [optional][default to true] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::MatchCriteriaBase.new(
  type: null,
  integration_id: 582dedf230e788746891281a,
  primary: null
)
```

