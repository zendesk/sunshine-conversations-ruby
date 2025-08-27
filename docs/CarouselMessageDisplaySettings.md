# SunshineConversationsClient::CarouselMessageDisplaySettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_aspect_ratio** | **String** | Specifies how to display all carousel images. Valid values are horizontal (default) and square. Only supported in Facebook Messenger, Web Messenger, Android SDK and iOS SDK carousels. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::CarouselMessageDisplaySettings.new(
  image_aspect_ratio: null
)
```

