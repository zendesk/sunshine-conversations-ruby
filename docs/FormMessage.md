# SunshineConversationsClient::FormMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;form&#39;]
**block_chat_input** | **Boolean** | true if the message should block the chat input on Web Messenger. | [optional] 
**fields** | [**Array&lt;Field&gt;**](Field.md) | An array of objects representing fields associated with the message. Only present in form and formResponse messages. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FormMessage.new(type: null,
                                 block_chat_input: null,
                                 fields: null)
```


