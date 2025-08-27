# SunshineConversationsClient::ParticipantLeaveBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ParticipantLeaveBody.openapi_one_of
# =>
# [
#   :'ParticipantLeaveBodyParticipantId',
#   :'ParticipantLeaveBodyUserExternalId',
#   :'ParticipantLeaveBodyUserId'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ParticipantLeaveBody.build(data)
# => #<ParticipantLeaveBodyParticipantId:0x00007fdd4aab02a0>

SunshineConversationsClient::ParticipantLeaveBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ParticipantLeaveBodyParticipantId`
- `ParticipantLeaveBodyUserExternalId`
- `ParticipantLeaveBodyUserId`
- `nil` (if no type matches)

