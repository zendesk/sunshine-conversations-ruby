# SunshineConversationsClient::SwitchboardAcceptControlAllOfPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation from which the switchboard event was fired. Will include an &#x60;activeSwitchboardIntegration&#x60; representing the integration that has just accepted control. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::SwitchboardAcceptControlAllOfPayload.new(
  conversation: null,
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;}
)
```

