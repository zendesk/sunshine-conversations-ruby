# SunshineConversationsClient::ImageMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;image&#39;]
**media_url** | **String** | The URL for media, such as an image, attached to the message. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that for private attachments an authorization header is required to access the mediaUrl. See &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/zendesk-web-widget-sdks/messaging_private_attachments/\&quot;&gt;Configuring private attachments for messaging&lt;/a&gt; guide for more details.&lt;/aside&gt;  | 
**media_type** | **String** | The type of media. | [optional] [readonly] 
**media_size** | **Float** | The size of the media in bytes. | [optional] [readonly] 
**alt_text** | **String** | An optional description of the image for accessibility purposes. The field will be saved by default with the file name as the value. | [optional] 
**text** | **String** | The text content of the message. Optional only if actions are provided. | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | Array of message actions. | [optional] 
**attachment_id** | **String** | An identifier used by Sunshine Conversations for internal purposes. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ImageMessage.new(type: null,
                                 media_url: null,
                                 media_type: null,
                                 media_size: null,
                                 alt_text: null,
                                 text: null,
                                 actions: null,
                                 attachment_id: null)
```


