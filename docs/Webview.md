# SunshineConversationsClient::Webview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of action. |  |
| **uri** | **String** | The webview URI. This is the URI that will open in the webview when clicking the button. |  |
| **text** | **String** | The button text. |  |
| **default** | **Boolean** | Boolean value indicating whether the action is the default action for a message item in Facebook Messenger. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] |
| **extra_channel_options** | [**ExtraChannelOptions**](ExtraChannelOptions.md) |  | [optional] |
| **size** | **String** | The size to display a webview. Used for actions of type webview. | [optional] |
| **fallback** | **String** | The fallback uri for channels that don’t support webviews. Used for actions of type webview. |  |
| **open_on_receive** | **Boolean** | Boolean value indicating if the webview should open automatically. Only one action per message can be set to true. Currently only supported on the Web Messenger. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Webview.new(
  type: null,
  uri: null,
  text: null,
  default: null,
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
  extra_channel_options: null,
  size: null,
  fallback: null,
  open_on_receive: null
)
```

