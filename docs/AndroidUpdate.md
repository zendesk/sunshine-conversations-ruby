# SunshineConversationsClient::AndroidUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/switchboard/#per-channel-default-responder\&quot;&gt;Per-channel default responder&lt;/a&gt; guide.  | [optional] 
**project_id** | **String** | Your project ID from your generated private key file. | [optional] 
**client_email** | **String** | Your client email from your generated private key file. | [optional] 
**private_key** | **String** | Your private key from your generated private key file. | [optional] 
**server_key** | **String** | Your server key from the fcm console. | [optional] 
**sender_id** | **String** | Your sender id from the fcm console. | [optional] 
**can_user_see_conversation_list** | **Boolean** | Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where &#x60;settings.multiConvoEnabled&#x60; is set to &#x60;true&#x60;*.  | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the android integration. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::AndroidUpdate.new(display_name: My awesome integration,
                                 default_responder_id: null,
                                 project_id: &lt;project-id&gt;,
                                 client_email: &lt;client-email&gt;,
                                 private_key: &lt;private-key&gt;,
                                 server_key: &lt;server-key&gt;,
                                 sender_id: &lt;sender-id&gt;,
                                 can_user_see_conversation_list: false,
                                 can_user_create_more_conversations: null)
```


