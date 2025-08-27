# SunshineConversationsClient::AcceptControlBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size. The metadata object will be included in the &#x60;switchboard:acceptControl&#x60; and &#x60;switchboard:acceptControl:failure&#x60; webhooks. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AcceptControlBody.new(
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;}
)
```

