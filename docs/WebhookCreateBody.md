# SunshineConversationsClient::WebhookCreateBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | URL to be called when the webhook is triggered. |  |
| **triggers** | **Array&lt;String&gt;** | An array of triggers the integration is subscribed to. This property is case sensitive. [More details](https://developer.zendesk.com/api-reference/conversations/#section/Webhook-Triggers). |  |
| **include_full_user** | **Boolean** | A boolean specifying whether webhook payloads should include the complete user schema for events involving a specific user. | [optional][default to false] |
| **include_full_source** | **Boolean** | A boolean specifying whether webhook payloads should include the client and device object (when applicable). | [optional][default to false] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::WebhookCreateBody.new(
  target: https://example.com/callback,
  triggers: [conversation:read, conversation:message],
  include_full_user: null,
  include_full_source: null
)
```

