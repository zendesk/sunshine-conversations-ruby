# SunshineConversationsClient::Page

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | A record id. Results will only contain the records that come after the specified record.  Only one of &#x60;after&#x60; or &#x60;before&#x60; can be provided, not both.  | [optional] |
| **before** | **String** | A record id. Results will only contain the records that come before the specified record. Only one of &#x60;after&#x60; or &#x60;before&#x60; can be provided, not both.  | [optional] |
| **size** | **Integer** | The number of records to return. Does not apply to the &#x60;listMessages&#x60; endpoint. | [optional][default to 25] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Page.new(
  after: 5e1606762556d93e9c176f69,
  before: 5e1606762556d93e9c176f69,
  size: 10
)
```

