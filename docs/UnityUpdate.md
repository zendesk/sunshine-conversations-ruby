# SunshineConversationsClient::UnityUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/switchboard/#per-channel-default-responder\&quot;&gt;Per-channel default responder&lt;/a&gt; guide.  | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the Unity integration. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::UnityUpdate.new(display_name: My awesome integration,
                                 default_responder_id: null,
                                 can_user_create_more_conversations: null)
```


