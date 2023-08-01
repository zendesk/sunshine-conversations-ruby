# SunshineConversationsClient::QuotedMessageExternalMessageId

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of quotedMessage - &#x60;externalMessageId&#x60; if no Sunshine Conversations message matched the quoted message. | [default to &#39;externalMessageId&#39;]
**external_message_id** | **String** | The external message Id of the quoted message. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::QuotedMessageExternalMessageId.new(type: null,
                                 external_message_id: null)
```


