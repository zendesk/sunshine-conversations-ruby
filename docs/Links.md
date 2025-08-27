# SunshineConversationsClient::Links

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prev** | **String** | A link to the previous page. Not specified if there are no previous pages. | [optional] |
| **_next** | **String** | A link to the next page. Not specified if there are no subsequent pages. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Links.new(
  prev: https://{subdomain}.zendesk.com/sc/v2/apps?page[before]&#x3D;fcafad804c39a39648004af9,
  _next: https://{subdomain}.zendesk.com/sc/v2/apps?page[after]&#x3D;5ea868f862cdd24abf010b38
)
```

