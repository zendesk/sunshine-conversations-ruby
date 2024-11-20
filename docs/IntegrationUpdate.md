# SunshineConversationsClient::IntegrationUpdate

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
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the web messenger integration. | [optional] 
**authentication_message_secret** | **String** | A secret used to create the state value when sending Apple authentication 2.0 messages | [optional] 
**page_access_token** | **String** | A Facebook Page Access Token. | [optional] 
**certificate** | **String** | The binary of your APN certificate base64 encoded. | [optional] 
**password** | **String** | The password for your APN certificate. | [optional] 
**production** | **Boolean** | The APN environment to connect to (Production, if true, or Sandbox). Defaults to value inferred from certificate if not specified. | [optional] 
**auto_update_badge** | **Boolean** | Use the unread count of the conversation as the application badge. | [optional] 
**hide_unsubscribe_link** | **Boolean** | A boolean value indicating whether the unsubscribe link should be omitted from outgoing emails. When enabled, it is expected that the business is providing the user a way to unsubscribe by some other means. By default, the unsubscribe link will be included in all outgoing emails. | [optional] 
**from_address** | **String** | Email address to use as the From and Reply-To address if it must be different from incomingAddress. Only use this option if the address that you supply is configured to forward emails to the incomingAddress, otherwise user replies will be lost. You must also make sure that the domain is properly configured as a mail provider so as to not be flagged as spam by the user’s email client. May be unset with null. | [optional] 
**brand_color** | **String** | This color will be used in the messenger header and the button or tab in idle state. Must be a 3 or 6-character hexadecimal color. | [optional] [default to &#39;65758e&#39;]
**fixed_intro_pane** | **Boolean** | When true, the introduction pane will be pinned at the top of the conversation instead of scrolling with it. | [optional] [default to false]
**conversation_color** | **String** | This color will be used for customer messages, quick replies and actions in the footer. Must be a 3 or 6-character hexadecimal color. | [optional] [default to &#39;0099ff&#39;]
**action_color** | **String** | This color will be used for call-to-actions inside your messages. Must be a 3 or 6-character hexadecimal color. | [optional] [default to &#39;0099ff&#39;]
**display_style** | **String** | Choose how the messenger will appear on your website. Must be either button or tab. | [optional] [default to &#39;button&#39;]
**button_icon_url** | **String** | With the button style Web Messenger, you have the option of selecting your own button icon. The image must be at least 200 x 200 pixels and must be in either JPG, PNG, or GIF format. | [optional] 
**button_width** | **String** | With the button style Web Messenger, you have the option of specifying the button width. | [optional] [default to &#39;58&#39;]
**button_height** | **String** | With the button style Web Messenger, you have the option of specifying the button height. | [optional] [default to &#39;58&#39;]
**integration_order** | **Array&lt;String&gt;** | Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed. | [optional] 
**business_name** | **String** | A custom business name for the Web Messenger. | [optional] 
**business_icon_url** | **String** | A custom business icon url for the Web Messenger. The image must be at least 200 x 200 pixels and must be in either JPG, PNG, or GIF format. | [optional] 
**background_image_url** | **String** | A background image url for the conversation. Image will be tiled to fit the window. | [optional] 
**origin_whitelist** | **Array&lt;String&gt;** | A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454: scheme \&quot;://\&quot; host [ \&quot;:\&quot; port ], where scheme is http or https.  | [optional] 
**prechat_capture** | [**PrechatCapture**](PrechatCapture.md) | Object whose properties can be set to specify the add-on’s options. See the [guide](https://docs.smooch.io/guide/web-messenger/#prechat-capture) to learn more about Prechat Capture. | [optional] 
**hsm_fallback_language** | **String** | Specify a fallback language to use when sending WhatsApp message template using the short hand syntax. Defaults to en_US. See WhatsApp documentation for more info. | [optional] [default to &#39;en_US&#39;]
**account_id** | **String** | The business ID associated with the WhatsApp account. In combination with accountManagementAccessToken, it’s used for Message Template Reconstruction. | [optional] 
**account_management_access_token** | **String** | An access token associated with the accountId used to query the WhatsApp Account Management API. In combination with accountId, it’s used for Message Template Reconstruction. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::IntegrationUpdate.new(display_name: My awesome integration,
                                 default_responder_id: null,
                                 project_id: &lt;project-id&gt;,
                                 client_email: &lt;client-email&gt;,
                                 private_key: &lt;private-key&gt;,
                                 server_key: &lt;server-key&gt;,
                                 sender_id: &lt;sender-id&gt;,
                                 can_user_create_more_conversations: null,
                                 authentication_message_secret: eH3Ea4329FzUGEsWkjQr1dbD1JDpn5Ygo/kbW0/f8gOQ4eHTr31bjDUcCfv3s9QaAwRgpd4sckdlSXwMOAGHBQ&#x3D;&#x3D;,
                                 page_access_token: your_access_token,
                                 certificate: your_APN_certificate,
                                 password: your_APN_password,
                                 production: null,
                                 auto_update_badge: null,
                                 hide_unsubscribe_link: null,
                                 from_address: test@sandbox123.mailgun.org,
                                 brand_color: null,
                                 fixed_intro_pane: null,
                                 conversation_color: null,
                                 action_color: null,
                                 display_style: null,
                                 button_icon_url: null,
                                 button_width: null,
                                 button_height: null,
                                 integration_order: [&quot;59fc8466260f48003505228b&quot;,&quot;59d79780481d34002b7d3617&quot;],
                                 business_name: Kent Shop,
                                 business_icon_url: https://www.gravatar.com/image.jpg,
                                 background_image_url: https://a-beautiful-tile.png,
                                 origin_whitelist: null,
                                 prechat_capture: null,
                                 hsm_fallback_language: null,
                                 account_id: your_whatsApp_account_id,
                                 account_management_access_token: your_access_token)
```


