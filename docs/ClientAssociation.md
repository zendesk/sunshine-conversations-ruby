# SunshineConversationsClient::ClientAssociation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ClientType**](ClientType.md) |  | [optional] |
| **client_id** | **String** | The id of the client being referenced. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ClientAssociation.new(
  type: null,
  client_id: 42589ad070d43be9b00ff7e5
)
```

