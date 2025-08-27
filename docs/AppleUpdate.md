# SunshineConversationsClient::AppleUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] |
| **default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] |
| **authentication_message_secret** | **String** | A secret used to create the state value when sending Apple authentication 2.0 messages | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AppleUpdate.new(
  display_name: My awesome integration,
  default_responder_id: null,
  authentication_message_secret: eH3Ea4329FzUGEsWkjQr1dbD1JDpn5Ygo/kbW0/f8gOQ4eHTr31bjDUcCfv3s9QaAwRgpd4sckdlSXwMOAGHBQ&#x3D;&#x3D;
)
```

