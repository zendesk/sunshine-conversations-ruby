# SmoochApi::IntegrationUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The integration display name. Used to map a human-friendly name to an integration.  | [optional] 
**brandColor** | **String** | This color will be used in the messenger header and the button or tab in idle state. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**fixedIntroPane** | **BOOLEAN** | When &#x60;true&#x60;, the introduction pane will be pinned at the top of the conversation instead of scrolling with it. The default value is &#x60;false&#x60;. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**conversationColor** | **String** | This color will be used for customer messages, quick replies and actions in the footer. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**actionColor** | **String** | This color will be used for call-to-actions inside your messages. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**displayStyle** | **String** | Choose how the messenger will appear on your website. Must be either button or tab. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**buttonIconUrl** | **String** | With the button style Web Messenger, you have the option of selecting your own button icon. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**buttonWidth** | **String** | With the button style Web Messenger, you have the option of specifying its width. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**buttonHeight** | **String** | With the button style Web Messenger, you have the option of specifying its height. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**integrationOrder** | **Array&lt;String&gt;** | Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed (Optional) Used for *Web Messenger* integrations.  | [optional] 
**businessName** | **String** | A custom business name for the Web Messenger. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**businessIconUrl** | **String** | A custom business icon url for the Web Messenger. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**backgroundImageUrl** | **String** | A custom background url for the Web Messenger. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**originWhitelist** | **Array&lt;String&gt;** | A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454 &#x60;scheme \&quot;://\&quot; host [ \&quot;:\&quot; port ]&#x60;, where scheme is &#x60;http&#x60; or &#x60;https&#x60;. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**channelId** | **String** | LINE Channel ID. Required for *line* integrations.  | [optional] 
**channelSecret** | **String** | LINE Channel Secret. Required for *line* integrations.  | [optional] 
**serviceCode** | **String** | LINE Service Code.  | [optional] 
**switcherSecret** | **String** | LINE Switcher Secret.  | [optional] 
**hsmFallbackLanguage** | **String** | Specification of a fallback language. (Optional) Used for *WhatsApp* integrations.  | [optional] 


