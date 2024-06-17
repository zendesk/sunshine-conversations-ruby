# SunshineConversationsClient::Unity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a Unity integration, create an integration with type &#39;unity&#39; by calling the Create Integration endpoint.  | [optional] [default to &#39;unity&#39;]
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the Unity integration. | [optional] 
**attachments_enabled** | **Boolean** | Allows users to send attachments. By default, the setting is set to true. This setting can only be configured in Zendesk Admin Center.  | [optional] [readonly] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/switchboard/#per-channel-default-responder\&quot;&gt;Per-channel default responder&lt;/a&gt; guide.  | [optional] 
**default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Unity.new(type: null,
                                 can_user_create_more_conversations: null,
                                 attachments_enabled: null,
                                 default_responder_id: null,
                                 default_responder: null)
```


