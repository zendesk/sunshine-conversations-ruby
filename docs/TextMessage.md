# SunshineConversationsClient::TextMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;text&#39;]
**text** | **String** | The text content of the message. Optional only if actions are provided. | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | Array of message actions. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::TextMessage.new(type: null,
                                 text: Hello!,
                                 actions: null)
```


