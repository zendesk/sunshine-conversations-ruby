# SunshineConversationsClient::AppListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apps** | [**Array&lt;App&gt;**](App.md) | List of returned apps. | [optional] |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **links** | [**Links**](Links.md) |  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AppListResponse.new(
  apps: null,
  meta: null,
  links: null
)
```

