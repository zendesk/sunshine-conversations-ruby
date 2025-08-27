# SunshineConversationsClient::AttachmentDeleteBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_url** | **String** | The media URL used for a file or image message. |  |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AttachmentDeleteBody.new(
  media_url: https://s3.amazonaws.com/document.pdf
)
```

