# SunshineConversationsClient::SyncUserBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**surviving_zendesk_id** | **String** | Only used for synchronizing messaging users when their Support user counterparts have been merged. The user.id of the surviving Support user is specified here.   | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::SyncUserBody.new(surviving_zendesk_id: 35436)
```


