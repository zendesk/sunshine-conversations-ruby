# SunshineConversationsClient::IntegrationListFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **types** | **String** | Comma-separated list of types to return. If omitted, all types are returned. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::IntegrationListFilter.new(
  types: android,ios
)
```

