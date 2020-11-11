# SunshineConversationsClient::UserMergeEventAllOfPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merged_users** | [**UserMergeEventAllOfPayloadMergedUsers**](UserMergeEventAllOfPayloadMergedUsers.md) |  | [optional] 
**merged_conversations** | [**UserMergeEventAllOfPayloadMergedConversations**](UserMergeEventAllOfPayloadMergedConversations.md) |  | [optional] 
**discarded_metadata** | **Object** | A flat object with the set of metadata properties that were discarded when merging the two users. This should contain values only if the combined metadata fields exceed the 4KB limit. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::UserMergeEventAllOfPayload.new(merged_users: null,
                                 merged_conversations: null,
                                 discarded_metadata: null)
```


