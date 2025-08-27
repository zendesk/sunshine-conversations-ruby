# SunshineConversationsClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Error code used for classifying similar error types | [optional] |
| **title** | **String** | Description of the error | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Error.new(
  code: not_found,
  title: Resource not found
)
```

