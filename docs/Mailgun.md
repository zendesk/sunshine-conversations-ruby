# SunshineConversationsClient::Mailgun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] |
| **type** | **String** | To configure a Mailgun integration, visit the API Keys tab in the settings page of the Mailgun dashboard and copy your active API key. Call the Create Integration endpoint with your API Key, a domain you have configured in Mailgun, and the incoming address you would like to use. Must have the same domain as the one specified in the domain parameter.  | [optional][default to &#39;mailgun&#39;] |
| **api_key** | **String** | The public API key of your Mailgun account. |  |
| **domain** | **String** | The domain used to relay email. This domain must be configured and verified in your Mailgun account. |  |
| **incoming_address** | **String** | Sunshine Conversations will receive all emails sent to this address. It will also be used as the Reply-To address. |  |
| **hide_unsubscribe_link** | **Boolean** | A boolean value indicating whether the unsubscribe link should be omitted from outgoing emails. When enabled, it is expected that the business is providing the user a way to unsubscribe by some other means. By default, the unsubscribe link will be included in all outgoing emails. | [optional] |
| **from_address** | **String** | Email address to use as the From and Reply-To address if it must be different from incomingAddress. Only use this option if the address that you supply is configured to forward emails to the incomingAddress, otherwise user replies will be lost. You must also make sure that the domain is properly configured as a mail provider so as to not be flagged as spam by the user’s email client. May be unset with null. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Mailgun.new(
  default_responder_id: null,
  default_responder: null,
  type: null,
  api_key: key-f265hj32f0sd897lqd2j5keb96784043,
  domain: sandbox123.mailgun.org,
  incoming_address: mytestemail@sandbox123.mailgun.org,
  hide_unsubscribe_link: null,
  from_address: test@sandbox123.mailgun.org
)
```

