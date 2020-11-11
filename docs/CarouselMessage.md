# SunshineConversationsClient::CarouselMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;carousel&#39;]
**text** | **String** | The fallback text message used when carousel messages are not supported by the channel. | [optional] [readonly] 
**items** | [**Array&lt;Item&gt;**](Item.md) | An array of objects representing the items associated with the message. Only present in carousel and list type messages. | 
**display_settings** | [**CarouselMessageDisplaySettings**](CarouselMessageDisplaySettings.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::CarouselMessage.new(type: null,
                                 text: null,
                                 items: null,
                                 display_settings: null)
```


