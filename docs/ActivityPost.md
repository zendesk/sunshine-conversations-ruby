# SunshineConversationsClient::ActivityPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | If the author type is &#x60;user&#x60;, only &#x60;conversation:read&#x60; is supported. |  |
| **author** | [**Author**](Author.md) | The author of the activity. |  |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ActivityPost.new(
  type: null,
  author: null
)
```

