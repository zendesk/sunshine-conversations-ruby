# SunshineConversationsClient::FileMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;file&#39;]
**media_url** | **String** | The URL for media, such as an image, attached to the message. | 
**media_size** | **Float** | The size of the media. | [optional] [readonly] 
**media_type** | **String** | The media type of the file. | [optional] [readonly] 
**text** | **String** | The text content of the message. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FileMessage.new(type: null,
                                 media_url: null,
                                 media_size: null,
                                 media_type: null,
                                 text: null)
```


