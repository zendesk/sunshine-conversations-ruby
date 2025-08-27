# SunshineConversationsClient::IosUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **certificate** | **String** | The binary of your APN certificate base64 encoded. | [optional] |
| **password** | **String** | The password for your APN certificate. | [optional] |
| **production** | **Boolean** | The APN environment to connect to (Production, if true, or Sandbox). Defaults to value inferred from certificate if not specified. | [optional] |
| **auto_update_badge** | **Boolean** | Use the unread count of the conversation as the application badge. | [optional] |
| **can_user_see_conversation_list** | **Boolean** | Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where &#x60;settings.multiConvoEnabled&#x60; is set to &#x60;true&#x60;*.  | [optional] |
| **can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the iOS integration. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::IosUpdate.new(
  display_name: My awesome integration,
  default_responder_id: null,
  certificate: your_APN_certificate,
  password: your_APN_password,
  production: null,
  auto_update_badge: null,
  can_user_see_conversation_list: false,
  can_user_create_more_conversations: null
)
```

