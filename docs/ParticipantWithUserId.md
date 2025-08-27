# SunshineConversationsClient::ParticipantWithUserId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The id of the user that will be participating in the conversation. It will return &#x60;404&#x60; if the user can’t be found. One of &#x60;userId&#x60; or &#x60;userExternalId&#x60; is required, but not both. | [optional] |
| **subscribe_sdk_client** | **Boolean** | When passed as true, the SDK client of the concerned participant will be subscribed to the conversation. The user will start receiving push notifications for this conversation right away, without having to view the conversation on the SDK beforehand. An SDK client will be created for users that don’t already have one. This field is required if the conversation is of type &#x60;sdkGroup&#x60;. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ParticipantWithUserId.new(
  user_id: 42589ad070d43be9b00ff7e5,
  subscribe_sdk_client: false
)
```

