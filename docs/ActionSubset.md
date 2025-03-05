# SunshineConversationsClient::ActionSubset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of action. | 
**text** | **String** | The button text. | 
**amount** | **Integer** | The amount being charged. It needs to be specified in cents and is an integer (9.99$ -&gt; 999). | 
**currency** | **String** | An ISO 4217 standard currency code in lowercase. Used for actions of type buy. | [optional] 
**metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 
**uri** | **String** | The webview URI. This is the URI that will open in the webview when clicking the button. | 
**default** | **Boolean** | Boolean value indicating whether the action is the default action for a message item in Facebook Messenger. | [optional] 
**extra_channel_options** | [**ExtraChannelOptions**](ExtraChannelOptions.md) |  | [optional] 
**payload** | **String** | The payload of a postback or reply button. | 
**size** | **String** | The size to display a webview. Used for actions of type webview. | [optional] 
**fallback** | **String** | The fallback uri for channels that don’t support webviews. Used for actions of type webview. | 
**open_on_receive** | **Boolean** | Boolean value indicating if the webview should open automatically. Only one action per message can be set to true. Currently only supported on the Web Messenger. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ActionSubset.new(type: null,
                                 text: null,
                                 amount: 8000,
                                 currency: CAD,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
                                 uri: null,
                                 default: null,
                                 extra_channel_options: null,
                                 payload: null,
                                 size: null,
                                 fallback: null,
                                 open_on_receive: null)
```


