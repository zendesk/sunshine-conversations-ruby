# SunshineConversationsClient::WebhookBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target** | **String** | URL to be called when the webhook is triggered. | [optional] 
**triggers** | **Array&lt;String&gt;** | An array of triggers the integration is subscribed to. This property is case sensitive. [More details](https://docs.smooch.io/rest/#section/Webhook-Triggers). | [optional] 
**include_full_user** | **Boolean** | A boolean specifying whether webhook payloads should include the complete user schema for events involving a specific user. | [optional] [default to false]
**include_full_source** | **Boolean** | A boolean specifying whether webhook payloads should include the client and device object (when applicable). | [optional] [default to false]

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::WebhookBody.new(target: https://example.com/callback,
                                 triggers: [&quot;conversation:read&quot;,&quot;conversation:message&quot;],
                                 include_full_user: null,
                                 include_full_source: null)
```


