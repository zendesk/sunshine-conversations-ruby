# SunshineConversationsClient::Ios

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure an ios integration, call the create integration endpoint with a base64 encoded Apple Push Notification certificate from the [Apple Developer Portal](https://developer.apple.com/).  | [optional] [default to &#39;ios&#39;]
**certificate** | **String** | The binary of your APN certificate base64 encoded. To base64 encode your certificate you can use this command in the terminal: &#x60;openssl base64 -in YOUR_CERTIFICATE.p12 | tr -d &#39;\\n&#39;&#x60;  | [optional] 
**password** | **String** | The password for your APN certificate. | [optional] 
**production** | **Boolean** | The APN environment to connect to (Production, if true, or Sandbox). Defaults to value inferred from certificate if not specified. | [optional] 
**auto_update_badge** | **Boolean** | Use the unread count of the conversation as the application badge. | [optional] 
**can_user_see_conversation_list** | **Boolean** | Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where &#x60;settings.multiConvoEnabled&#x60; is set to &#x60;true&#x60;*.  | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the iOS integration. | [optional] 
**attachments_enabled** | **Boolean** | Allows users to send attachments. By default, the setting is set to true. This setting can only be configured in Zendesk Admin Center.  | [optional] [readonly] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] 
**default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Ios.new(type: null,
                                 certificate: your_APN_certificate,
                                 password: your_APN_password,
                                 production: null,
                                 auto_update_badge: null,
                                 can_user_see_conversation_list: false,
                                 can_user_create_more_conversations: null,
                                 attachments_enabled: null,
                                 default_responder_id: null,
                                 default_responder: null)
```


