# SmoochApi::MessagePost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | The role of the individual posting the message. See Enums.md for available values. | 
**type** | **String** | The message type. See Enums.md for available values. | 
**name** | **String** | The display name of the message author. | [optional] 
**email** | **String** | The email address of the message author. | [optional] 
**avatarUrl** | **String** | The URL of the desired message avatar image. | [optional] 
**metadata** | **Object** | Flat JSON object containing any custom properties associated with the message. | [optional] 
**payload** | **String** | The payload of a reply action, if applicable. | [optional] 
**text** | **String** | The message text. Required for text messages.  | [optional] 
**mediaUrl** | **String** | The mediaUrl for the message. Required for image/file messages.  | [optional] 
**mediaType** | **String** | The mediaType for the message. Required for image/file messages.  | [optional] 
**items** | [**Array&lt;MessageItem&gt;**](MessageItem.md) | The items in the message list. Required for carousel and list messages.  | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | The actions in the message. | [optional] 
**destination** | [**Destination**](Destination.md) | Specifies which channel to deliver a message to. See [list integrations](https://docs.smooch.io/rest/#list-integrations) to get integration ID and type. | [optional] 
**override** | [**MessageOverride**](MessageOverride.md) | Specifies channel-specific overrides to use in order to bypass Smooch&#39;s message translation logic. | [optional] 


