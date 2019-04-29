# SmoochApi::Message

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The message ID, generated automatically. | 
**authorId** | **String** | The ID of the message&#39;s author. | 
**role** | **String** | The role of the individual posting the message. See [**RoleEnum**](Enums.md#RoleEnum) for available values. | 
**type** | **String** | The message type. See [**MessageTypeEnum**](Enums.md#MessageTypeEnum) for available values. | 
**source** | [**Source**](Source.md) | The source of the message. | [optional] 
**name** | **String** | The display name of the message author. | 
**text** | **String** | The message text. Required for text messages.  | 
**email** | **String** | The email address of the message author. | [optional] 
**avatarUrl** | **String** | The URL of the desired message avatar image. | 
**received** | **Float** | The unix timestamp of the moment the message was received. | 
**mediaUrl** | **String** | The mediaUrl for the message. Required for image/file messages.  | [optional] 
**mediaType** | **String** | The mediaType for the message. Required for image/file messages.  | [optional] 
**metadata** | **Object** | Flat JSON object containing any custom properties associated with the message. | [optional] 
**items** | [**Array&lt;MessageItem&gt;**](MessageItem.md) | The items in the message list. Required for carousel and list messages.  | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | The actions in the message. | [optional] 
**payload** | **String** | The payload of a reply action, if applicable. | [optional] 
**displaySettings** | [**DisplaySettings**](DisplaySettings.md) | Settings to adjust the carousel layout. See [Display Settings](https://docs.smooch.io/rest/#display-settings). | [optional] 


