# SunshineConversationsClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier for the webhook. | [optional][readonly] |
| **version** | **String** | Schema version of the payload delivered to this webhook. Can be &#x60;v1&#x60;, &#x60;v1.1&#x60; or &#x60;v2&#x60;. | [optional][readonly] |
| **target** | **String** | URL to be called when the webhook is triggered. |  |
| **triggers** | **Array&lt;String&gt;** | An array of triggers the integration is subscribed to. This property is case sensitive. [More details](https://developer.zendesk.com/api-reference/conversations/#section/Webhook-Triggers). |  |
| **secret** | **String** | Webhook secret, used to verify the origin of incoming requests. | [optional] |
| **include_full_user** | **Boolean** | A boolean specifying whether webhook payloads should include the complete user schema for events involving a specific user. | [optional][default to false] |
| **include_full_source** | **Boolean** | A boolean specifying whether webhook payloads should include the client and device object (when applicable). | [optional][default to false] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Webhook.new(
  id: 5e554d2cac66fb73a3c01871,
  version: v2,
  target: https://example.com/callback,
  triggers: [&quot;conversation:read&quot;,&quot;conversation:message&quot;],
  secret: 8564b3e6a8b20a4bdb68b05ce9bc5936,
  include_full_user: null,
  include_full_source: null
)
```

