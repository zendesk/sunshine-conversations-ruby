# SunshineConversationsClient::Postback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of action. | [default to &#39;postback&#39;] |
| **text** | **String** | The button text. |  |
| **payload** | **String** | The payload of a postback or reply button. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Postback.new(
  type: null,
  text: null,
  payload: null,
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;}
)
```

