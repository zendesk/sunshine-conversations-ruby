# SunshineConversationsClient::ParticipantLeaveBodyParticipantId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** | The participantId of the user that will be removed from the conversation. It will return 404 if the user can’t be found.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ParticipantLeaveBodyParticipantId.new(
  participant_id: 42589ad070d43be9b00ff7e5
)
```

