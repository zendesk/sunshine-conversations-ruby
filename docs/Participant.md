# SunshineConversationsClient::Participant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the participant. | [optional] 
**user_id** | **String** | The id of the associated user. | [optional] 
**unread_count** | **Integer** | Number of messages the user has not yet read. | [optional] 
**client_associations** | [**Array&lt;ClientAssociation&gt;**](ClientAssociation.md) | Represents the clients that are active in the conversation for a particular user. A participant can have multiple clientAssociations in the case of channel transfer, business initiated conversations, or identified users. The order of the array indicates how recently a client has interacted with the conversation, with the most recent client first. The first item in the array is considered to be the user&#39;s primary client for that conversation, and will be selected first for message delivery.  | [optional] 
**user_external_id** | **String** | The externalId of the associated user. | [optional] 
**last_read** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the latest message the user has read. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Participant.new(id: c93bb9c14dde8ffb94564eae,
                                 user_id: 42589ad070d43be9b00ff7e5,
                                 unread_count: 0,
                                 client_associations: null,
                                 user_external_id: your-own-id,
                                 last_read: 2019-01-14T18:55:12.515Z)
```


