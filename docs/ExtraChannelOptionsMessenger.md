# SunshineConversationsClient::ExtraChannelOptionsMessenger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messenger_extensions** | **Boolean** | For webview type actions, a boolean value indicating whether the URL should be loaded with Messenger Extensions enabled. [More info](https://developers.facebook.com/docs/messenger-platform/send-api-reference/url-button). | [optional][default to false] |
| **webview_share_button** | **String** | For webview type actions, a string value indicating if the share button should be hidden. [More Info](https://developers.facebook.com/docs/messenger-platform/reference/buttons/url). | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ExtraChannelOptionsMessenger.new(
  messenger_extensions: false,
  webview_share_button: null
)
```

