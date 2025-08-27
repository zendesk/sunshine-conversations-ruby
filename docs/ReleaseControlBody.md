# SunshineConversationsClient::ReleaseControlBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | Reason for the release control action. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size. The metadata object will be included in the &#x60;switchboard:releaseControl&#x60; webhook. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ReleaseControlBody.new(
  reason: null,
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;}
)
```

