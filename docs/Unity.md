# SunshineConversationsClient::Unity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] |
| **type** | **String** | To configure a Unity integration, create an integration with type &#39;unity&#39; by calling the Create Integration endpoint.  | [optional][default to &#39;unity&#39;] |
| **can_user_see_conversation_list** | **Boolean** | Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where &#x60;settings.multiConvoEnabled&#x60; is set to &#x60;true&#x60;*.  | [optional] |
| **can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the Unity integration. | [optional] |
| **attachments_enabled** | **Boolean** | Allows users to send attachments. By default, the setting is set to true. This setting can only be configured in Zendesk Admin Center.  | [optional][readonly] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Unity.new(
  default_responder_id: null,
  default_responder: null,
  type: null,
  can_user_see_conversation_list: false,
  can_user_create_more_conversations: null,
  attachments_enabled: null
)
```

