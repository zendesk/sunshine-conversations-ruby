# SmoochApi::Action

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The action type. See [**ActionTypeEnum**](Enums.md#ActionTypeEnum) for available values. | 
**text** | **String** | The button text. | 
**payload** | **String** | The payload to be sent with the resulting webhook. Required for *postback* and *reply* actions.  | [optional] 
**metadata** | **Object** | Flat JSON object containing any custom properties associated with the action. | [optional] 
**amount** | **Integer** | The amount being charged. It needs to be specified in cents and is an integer. Required for *buy* actions.  | [optional] 
**currency** | **String** | The currency of the amount being charged (USD, CAD, etc.). | [optional] 
**default** | **BOOLEAN** | Flag indicating if the message action is the default for a message item in Facebook Messenger. | [optional] 
**iconUrl** | **String** | An icon to render next to the reply option (Facebook Messenger and Web Messenger only). | [optional] 
**uri** | **String** | The action URI. This is the link that will be used in the clients when clicking the button. Required for *link* and *webview* actions.  | [optional] 
**fallback** | **String** | The webview action fallback uri. This is the link that will be used in clients that do not support webviews. Required for *webview* actions.  | [optional] 
**size** | **String** | The size used to display the webview. Allowed values are [\&quot;compact\&quot;, \&quot;tall\&quot;, \&quot;full\&quot;]. (Optional) Used for *webview* actions. See [**ActionSizeEnum**](Enums.md#ActionSizeEnum) for available values.  | [optional] 
**extraChannelOptions** | **Object** | Extra options to pass directly to the channel API. See [Extra Channel Options](https://docs.smooch.io/rest#extra-channel-options-schema) | [optional] 
**openOnReceive** | **BOOLEAN** | Flag indicating if the webview should open automatically. Only one action per message can be set to true. Currently only supported on the Web Messenger. | [optional] 


