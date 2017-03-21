# SmoochApi::MessagePost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | The role of the individual posting the message. Can be either *appUser* or *appMaker*. | 
**type** | **String** | The message type. | 
**name** | **String** | The display name of the message author. | [optional] 
**email** | **String** | The email address of the message author. | [optional] 
**avatar_url** | **String** | The URL of the desired message avatar image. | [optional] 
**metadata** | **Object** | Flat JSON object containing any custom properties associated with the message. | [optional] 
**payload** | **String** | The payload of a reply action, if applicable. | [optional] 
**text** | **String** | The message text. Required for text messages.  | [optional] 
**media_url** | **String** | The mediaUrl for the image. Required for image messages.  | [optional] 
**media_type** | **String** | The mediaType for the image. Required for image messages.  | [optional] 
**items** | [**Array&lt;MessageItem&gt;**](MessageItem.md) | The items in the message list. Required for carousel and list messages.  | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | The actions in the message. | [optional] 
**destination** | [**Destination**](Destination.md) | Specifies which channel to deliver a message to. See [list integrations](https://docs.smooch.io/rest/#list-integrations) to get integration ID and type. | [optional] 


