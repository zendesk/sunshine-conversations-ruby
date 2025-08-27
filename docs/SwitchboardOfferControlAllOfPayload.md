# SunshineConversationsClient::SwitchboardOfferControlAllOfPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation from which the switchboard event was fired. On success, the payload will include an &#x60;activeSwitchboardIntegration&#x60;, representing the integration from which control is being offered, and a &#x60;pendingSwitchboardIntegration&#x60;, representing the integration being offered control. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::SwitchboardOfferControlAllOfPayload.new(
  conversation: null,
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;}
)
```

