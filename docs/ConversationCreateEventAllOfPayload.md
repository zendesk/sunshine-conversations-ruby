# SunshineConversationsClient::ConversationCreateEventAllOfPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation that was created. | [optional] |
| **creation_reason** | **String** | The reason why the conversation was created, if applicable. * &#x60;linkRequest&#x60; - The conversation was created in order to generate a link request to transfer the user to a different channel. * &#x60;message&#x60; - The conversation was created because a message was sent. * &#x60;none&#x60; - The conversation was not created for a specific purpose. Used primarily when a conversation is created via the Create Conversation API. * &#x60;notification&#x60; - The conversation was created by a call to the Notification API. * &#x60;prechatCapture&#x60; - The conversation was created because the user completed a prechat capture form in the Web Messenger. * &#x60;startConversation&#x60; - The conversation was created because of a call to the startConversation API on one of the SDK integrations, or a start conversation event was triggered from a messaging channel. * &#x60;proactiveMessaging&#x60; - The conversation was created because the user interacted with a campaign.  | [optional] |
| **source** | [**SourceWithCampaignWebhook**](SourceWithCampaignWebhook.md) | The source of the creation. | [optional] |
| **user** | [**User**](User.md) | The user associated with the conversation. Only present if the created conversation was of type personal. For sdkGroup conversations, the list of participants can be fetched using the List Participants API, if required. | [optional] |
| **referral** | [**Referral**](Referral.md) | Referral information, if applicable. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationCreateEventAllOfPayload.new(
  conversation: null,
  creation_reason: null,
  source: null,
  user: null,
  referral: null
)
```

