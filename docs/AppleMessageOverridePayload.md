# SunshineConversationsClient::AppleMessageOverridePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | **Object** |  | [optional] |
| **with_capabilities** | **Array&lt;String&gt;** | List of capabilities needed for the override message to be received by the end user.   &#x60;LIST&#x60; : for list picker; &#x60;TIME&#x60; : for time picker; &#x60;FORM&#x60; : for form; &#x60;QUICK&#x60; : for quick reply; &#x60;AUTH2&#x60; : for authentication  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AppleMessageOverridePayload.new(
  payload: null,
  with_capabilities: [&quot;LIST&quot;]
)
```

