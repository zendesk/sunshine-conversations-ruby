# SunshineConversationsClient::ParticipantLeaveBodyUserExternalId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_external_id** | **String** | The externalId of the user that will be removed from the conversation. It will return 404 if the user can’t be found.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ParticipantLeaveBodyUserExternalId.new(
  user_external_id: your-own-user-id
)
```

