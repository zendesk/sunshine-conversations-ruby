# SunshineConversationsClient::Web

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] |
| **type** | **String** | To configure a Web Messenger integration, acquire the required information and call the Create Integration endpoint.  | [optional][default to &#39;web&#39;] |
| **brand_color** | **String** | This color will be used in the messenger header and the button or tab in idle state. Must be a 3 or 6-character hexadecimal color.  | [optional][default to &#39;65758e&#39;] |
| **fixed_intro_pane** | **Boolean** | When true, the introduction pane will be pinned at the top of the conversation instead of scrolling with it.  | [optional][default to false] |
| **conversation_color** | **String** | This color will be used for customer messages, quick replies and actions in the footer. Must be a 3 or 6-character hexadecimal color.  | [optional][default to &#39;0099ff&#39;] |
| **action_color** | **String** | This color will be used for call-to-actions inside your messages. Must be a 3 or 6-character hexadecimal color.  | [optional][default to &#39;0099ff&#39;] |
| **display_style** | **String** | Choose how the messenger will appear on your website. Must be either button or tab.  | [optional][default to &#39;button&#39;] |
| **button_icon_url** | **String** | With the button style Web Messenger, you have the option of selecting your own button icon. The image must be at least 200 x 200 pixels and must be in either JPG, PNG, or GIF format.  | [optional] |
| **button_width** | **String** | With the button style Web Messenger, you have the option of specifying the button width.  | [optional][default to &#39;58&#39;] |
| **button_height** | **String** | With the button style Web Messenger, you have the option of specifying the button height.  | [optional][default to &#39;58&#39;] |
| **integration_order** | **Array&lt;String&gt;** | Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed.  | [optional] |
| **business_name** | **String** | A custom business name for the Web Messenger. | [optional] |
| **business_icon_url** | **String** | A custom business icon url for the Web Messenger. The image must be at least 200 x 200 pixels and must be in either JPG, PNG, or GIF format.  | [optional] |
| **background_image_url** | **String** | A background image url for the conversation. Image will be tiled to fit the window.  | [optional] |
| **origin_whitelist** | **Array&lt;String&gt;** | A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454: scheme \&quot;://\&quot; host [ \&quot;:\&quot; port ], where scheme is http or https.  | [optional] |
| **prechat_capture** | [**PrechatCapture**](PrechatCapture.md) | Object whose properties can be set to specify the add-on’s options. See the [guide](https://docs.smooch.io/guide/web-messenger/#prechat-capture) to learn more about Prechat Capture.  | [optional] |
| **can_user_see_conversation_list** | **Boolean** | Allows users to view their list of conversations. By default, the list of conversations will be visible. *This setting only applies to apps where &#x60;settings.multiConvoEnabled&#x60; is set to &#x60;true&#x60;*.  | [optional] |
| **can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the web messenger integration.  | [optional] |
| **attachments_enabled** | **Boolean** | Allows users to send attachments. By default, the setting is set to true. This setting can only be configured in Zendesk Admin Center.  | [optional][readonly] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Web.new(
  default_responder_id: null,
  default_responder: null,
  type: null,
  brand_color: null,
  fixed_intro_pane: null,
  conversation_color: null,
  action_color: null,
  display_style: null,
  button_icon_url: https://domain.com/images/avatar.png,
  button_width: null,
  button_height: null,
  integration_order: [&quot;59fc8466260f48003505228b&quot;, &quot;59d79780481d34002b7d3617&quot;],
  business_name: Kent Shop,
  business_icon_url: https://www.gravatar.com/image.jpg,
  background_image_url: https://a-beautiful-tile.png,
  origin_whitelist: https://yourdomain.com,
  prechat_capture: null,
  can_user_see_conversation_list: false,
  can_user_create_more_conversations: null,
  attachments_enabled: null
)
```

