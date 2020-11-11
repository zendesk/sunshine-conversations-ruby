# SunshineConversationsClient::ImageMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;image&#39;]
**media_url** | **String** | The URL for media, such as an image, attached to the message. | 
**text** | **String** | The text content of the message. Optional only if actions are provided. | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | Array of message actions. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ImageMessage.new(type: null,
                                 media_url: null,
                                 text: null,
                                 actions: null)
```


