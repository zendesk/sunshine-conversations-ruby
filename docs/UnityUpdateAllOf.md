# SunshineConversationsClient::UnityUpdateAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**can_user_see_conversation_list** | **Boolean** | Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where &#x60;settings.multiConvoEnabled&#x60; is set to &#x60;true&#x60;*.  | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the Unity integration. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::UnityUpdateAllOf.new(can_user_see_conversation_list: false,
                                 can_user_create_more_conversations: null)
```


