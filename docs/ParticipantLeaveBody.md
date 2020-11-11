# SunshineConversationsClient::ParticipantLeaveBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | The id of the user that will be removed from the conversation. It will return 404 if the user can’t be found.  | [optional] 
**user_external_id** | **String** | The externalId of the user that will be removed from the conversation. It will return 404 if the user can’t be found.  | [optional] 
**participant_id** | **String** | The participantId of the user that will be removed from the conversation. It will return 404 if the user can’t be found.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ParticipantLeaveBody.new(user_id: 42589ad070d43be9b00ff7e5,
                                 user_external_id: your-own-user-id,
                                 participant_id: 42589ad070d43be9b00ff7e5)
```


