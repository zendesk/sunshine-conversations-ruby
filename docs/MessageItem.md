# SmoochApi::MessageItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the message item. | 
**description** | **String** | The text description, or subtitle. | [optional] 
**mediaUrl** | **String** | The image URL to be shown in the carousel/list item. | [optional] 
**altText** | **String** | An optional description of the media for accessibility purposes. The field will be saved by default with the file name as the value. | [optional] 
**size** | **String** | The size of the image to be shown in the carousel/list item. Only top item of Facebook Messenger carousel supported. See [**MessageItemSizeEnum**](Enums.md#MessageItemSizeEnum) for available values.  | [optional] 
**mediaType** | **String** | If a *mediaUrl* was specified, the media type is defined here, for example *image/jpeg*. | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | Array of [action buttons](https://docs.smooch.io/rest/#action-buttons). At least 1 is required, a maximum of 3 are allowed. | 


