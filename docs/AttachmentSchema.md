# SunshineConversationsClient::AttachmentSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**media_url** | **String** | Uploaded attachment’s url.  &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that for private attachments an authorization header is required to access the mediaUrl. See [configuring private attachments for messaging](https://developer.zendesk.com/documentation/zendesk-web-widget-sdks/messaging_private_attachments/) guide for more details.&lt;/aside&gt;  | [optional] 
**media_type** | **String** | Uploaded attachment&#39;s media type | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::AttachmentSchema.new(media_url: https://smooch.io/rocks.smooch.media-dev/apps/5ec41c54fe13cc5ac404bedc/conversations/c616a583e4c240a871818541/TmYMVQUBNsQRItX4fKf4aC-T/Screen%20Shot%202020-09-02%20at%204.04.41%20PM.png,
                                 media_type: image/png)
```


