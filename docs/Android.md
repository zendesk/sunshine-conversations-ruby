# SunshineConversationsClient::Android

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;android&#39;]
**server_key** | **String** | Your server key from the fcm console. | [optional] 
**sender_id** | **String** | Your sender id from the fcm console. | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the android integration. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Android.new(type: null,
                                 server_key: &lt;server-key&gt;,
                                 sender_id: &lt;sender-id&gt;,
                                 can_user_create_more_conversations: null)
```


