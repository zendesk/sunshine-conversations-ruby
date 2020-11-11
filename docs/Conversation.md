# SunshineConversationsClient::Conversation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the conversation. | [optional] 
**type** | [**ConversationType**](ConversationType.md) |  | [optional] 
**active_switchboard_integration** | [**SwitchboardIntegrationWebhook**](SwitchboardIntegrationWebhook.md) | The current switchboard integration that is in control of the conversation. This field is omitted if no &#x60;activeSwitchboardIntegration&#x60; exists for the conversation. | [optional] 
**pending_switchboard_integration** | [**SwitchboardIntegrationWebhook**](SwitchboardIntegrationWebhook.md) | The switchboard integration that is awaiting control. This field is omitted if no switchboard integration has been previously offered control. | [optional] 
**is_default** | **Boolean** | Whether the conversation is the default conversation for the user. Will be true for the first personal conversation created for the user, and false in all other cases.  | [optional] 
**display_name** | **String** | A friendly name for the conversation, may be displayed to the business or the user.  | [optional] 
**description** | **String** | A short text describing the conversation. | [optional] 
**icon_url** | **String** | A custom conversation icon url. The image must be in either JPG, PNG, or GIF format | [optional] 
**metadata** | [**Object**](.md) | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 
**business_last_read** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the moment the conversation was last marked as read with role business.  | [optional] 
**last_updated_at** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the moment the last message was received in the conversation, or the creation time if no messages have been received yet.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Conversation.new(id: c93bb9c14dde8ffb94564eae,
                                 type: null,
                                 active_switchboard_integration: null,
                                 pending_switchboard_integration: null,
                                 is_default: false,
                                 display_name: My conversation,
                                 description: Conversation between Rogers and Carl.,
                                 icon_url: https://www.gravatar.com/image.jpg,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
                                 business_last_read: 2020-06-23T14:33:47.492Z,
                                 last_updated_at: 2020-06-26T14:33:47.120Z)
```


