# SunshineConversationsClient::CarouselMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;carousel&#39;]
**text** | **String** | The fallback text message used when carousel messages are not supported by the channel. | [optional] [readonly] 
**block_chat_input** | **Boolean** | When set to true, the chat input will be disabled on supported client implementations when the message is the most recent one in the history. Can be used for guided flows or to temporarily disable the user&#39;s ability to send messages in the conversation. | [optional] 
**items** | [**Array&lt;Item&gt;**](Item.md) | An array of objects representing the items associated with the message. Only present in carousel and list type messages. | 
**display_settings** | [**CarouselMessageDisplaySettings**](CarouselMessageDisplaySettings.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::CarouselMessage.new(type: null,
                                 text: null,
                                 block_chat_input: null,
                                 items: null,
                                 display_settings: null)
```


