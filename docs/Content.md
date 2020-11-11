# SunshineConversationsClient::Content

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;location&#39;]
**text** | **String** | The fallback text message used when location messages are not supported by the channel. | [optional] [readonly] 
**actions** | [**Array&lt;ActionSubset&gt;**](ActionSubset.md) | An array of objects representing the actions associated with the message. The array length is limited by the third party channel. | [optional] 
**items** | [**Array&lt;Item&gt;**](Item.md) | An array of objects representing the items associated with the message. Only present in carousel and list type messages. | 
**display_settings** | [**CarouselMessageDisplaySettings**](CarouselMessageDisplaySettings.md) |  | [optional] 
**media_url** | **String** | The URL for media, such as an image, attached to the message. | 
**media_size** | **Float** | The size of the media. | [optional] [readonly] 
**media_type** | **String** | The media type of the file. | [optional] [readonly] 
**block_chat_input** | **Boolean** | true if the message should block the chat input on Web Messenger. form message only. | [optional] 
**fields** | [**Array&lt;Field&gt;**](Field.md) | Array of field objects that contain the submitted fields. | 
**text_fallback** | **String** | A string containing the &#x60;label: value&#x60; of all fields, each separated by a newline character. | [optional] [readonly] 
**coordinates** | [**LocationMessageCoordinates**](LocationMessageCoordinates.md) |  | 
**location** | [**LocationMessageLocation**](LocationMessageLocation.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Content.new(type: null,
                                 text: null,
                                 actions: null,
                                 items: null,
                                 display_settings: null,
                                 media_url: null,
                                 media_size: null,
                                 media_type: null,
                                 block_chat_input: null,
                                 fields: null,
                                 text_fallback: null,
                                 coordinates: null,
                                 location: null)
```


