# SunshineConversationsClient::Twitter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] |
| **type** | **String** | To set up a Twitter integration, please follow the steps outlined in the [Twitter Setup Guide](https://docs.smooch.io/guide/twitter/#setup).  | [optional][default to &#39;twitter&#39;] |
| **tier** | **String** | Your Twitter app&#39;s tier. Only \&quot;enterprise\&quot; is supported for new integrations. |  |
| **env_name** | **String** | The Twitter dev environments label. Only required / used for sandbox and premium tiers. | [optional][readonly] |
| **consumer_key** | **String** | The consumer key for your Twitter app. |  |
| **consumer_secret** | **String** | The consumer key secret for your Twitter app. |  |
| **access_token_key** | **String** | The access token key obtained from your user via oauth. |  |
| **access_token_secret** | **String** | The access token secret obtained from your user via oauth. |  |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Twitter.new(
  default_responder_id: null,
  default_responder: null,
  type: null,
  tier: null,
  env_name: null,
  consumer_key: your_consumer_key,
  consumer_secret: your_consumer_secret,
  access_token_key: your_access_token_key,
  access_token_secret: your_access_token_secret
)
```

