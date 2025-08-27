# SunshineConversationsClient::ClientListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clients** | [**Array&lt;Client&gt;**](Client.md) | List of returned clients. | [optional] |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **links** | [**Links**](Links.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ClientListResponse.new(
  clients: null,
  meta: null,
  links: null
)
```

