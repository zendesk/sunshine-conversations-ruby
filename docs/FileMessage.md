# SunshineConversationsClient::FileMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;file&#39;]
**media_url** | **String** | The URL for media, such as an image, attached to the message. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that for private attachments an authorization header is required to access the mediaUrl. See [configuring private attachments for messaging](https://developer.zendesk.com/documentation/zendesk-web-widget-sdks/messaging_private_attachments/) guide for more details.&lt;/aside&gt;  | 
**media_size** | **Float** | The size of the media. | [optional] [readonly] 
**media_type** | **String** | The media type of the file. | [optional] [readonly] 
**alt_text** | **String** | An optional description of the file for accessibility purposes. The field will be saved by default with the file name as the value. | [optional] 
**text** | **String** | The text content of the message. | [optional] 
**html_text** | **String** | HTML text content of the message. Can be provided in place of &#x60;text&#x60;. Cannot be used with &#x60;markdownText&#x60;. If no &#x60;text&#x60; is provided, will be converted to &#x60;text&#x60; upon reception to be displayed on channels that do not support rich text. See [rich text](https://docs.smooch.io/guide/structured-messages/rich-text) documentation for more information. | [optional] 
**markdown_text** | **String** | Markdown text content of the message. Can be provided in place of &#x60;text&#x60;. Cannot be used with &#x60;htmlText&#x60;. Will be converted to &#x60;htmlText&#x60; upon reception. If converted &#x60;htmlText&#x60; exceeds 4096 characters, the message will be rejected. If no &#x60;text&#x60; is provided, will be converted to &#x60;text&#x60; upon reception to be displayed on channels that do not support rich text. See [rich text](https://docs.smooch.io/guide/structured-messages/rich-text) documentation for more information. | [optional] 
**attachment_id** | **String** | An identifier used by Sunshine Conversations for internal purposes. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FileMessage.new(type: null,
                                 media_url: null,
                                 media_size: null,
                                 media_type: null,
                                 alt_text: null,
                                 text: null,
                                 html_text: &lt;h1&gt;Hello!&lt;/h1&gt;,
                                 markdown_text: # Hello!,
                                 attachment_id: null)
```


