# SunshineConversationsClient::ParticipantLeaveBodyUserId

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | The id of the user that will be removed from the conversation. It will return 404 if the user can’t be found.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ParticipantLeaveBodyUserId.new(user_id: 42589ad070d43be9b00ff7e5)
```


