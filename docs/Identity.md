# SunshineConversationsClient::Identity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of identity. | [optional] |
| **value** | **String** | The identity value. | [optional] |
| **verification** | **String** | The type of verification performed on the identity. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Identity.new(
  type: email,
  value: jane.doe@gmail.com,
  verification: embed
)
```

