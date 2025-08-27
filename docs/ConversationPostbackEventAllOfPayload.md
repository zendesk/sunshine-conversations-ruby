# SunshineConversationsClient::ConversationPostbackEventAllOfPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postback** | [**PostbackWebhook**](PostbackWebhook.md) | The postback associated with the event. | [optional] |
| **conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation linked to the postback. | [optional] |
| **user** | [**User**](User.md) | The user that triggered the postback. | [optional] |
| **source** | [**SourceWithCampaignWebhook**](SourceWithCampaignWebhook.md) | The source of the postback. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationPostbackEventAllOfPayload.new(
  postback: null,
  conversation: null,
  user: null,
  source: null
)
```

