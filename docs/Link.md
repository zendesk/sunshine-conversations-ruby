# SunshineConversationsClient::Link

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of action. | [default to &#39;link&#39;]
**uri** | **String** | The action URI. This is the link that will be used in the clients when clicking the button. | 
**text** | **String** | The button text. | 
**default** | **Boolean** | Boolean value indicating whether the action is the default action for a message item in Facebook Messenger. | [optional] 
**metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 
**extra_channel_options** | [**ExtraChannelOptions**](ExtraChannelOptions.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Link.new(type: null,
                                 uri: null,
                                 text: null,
                                 default: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
                                 extra_channel_options: null)
```


