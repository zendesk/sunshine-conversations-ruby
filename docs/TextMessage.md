# SunshineConversationsClient::TextMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;text&#39;]
**text** | **String** | The text content of the message. Required unless &#x60;actions&#x60;, &#x60;htmlText&#x60; or &#x60;markdownText&#x60; is provided. | [optional] 
**html_text** | **String** | HTML text content of the message. Can be provided in place of &#x60;text&#x60;. Cannot be used with &#x60;markdownText&#x60;. If no &#x60;text&#x60; is provided, will be converted to &#x60;text&#x60; upon reception to be displayed on channels that do not support rich text. See [rich text](https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/structured-messages/#rich-text) documentation for more information. | [optional] 
**block_chat_input** | **Boolean** | When set to true, the chat input will be disabled on supported client implementations when the message is the most recent one in the history. Can be used for guided flows or to temporarily disable the user&#39;s ability to send messages in the conversation. | [optional] 
**markdown_text** | **String** | Markdown text content of the message. Can be provided in place of &#x60;text&#x60;. Cannot be used with &#x60;htmlText&#x60;. Will be converted to &#x60;htmlText&#x60; upon reception. If converted &#x60;htmlText&#x60; exceeds 4096 characters, the message will be rejected. If no &#x60;text&#x60; is provided, will be converted to &#x60;text&#x60; upon reception to be displayed on channels that do not support rich text. See [rich text](https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/structured-messages/#rich-text) documentation for more information. | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | Array of message actions. | [optional] 
**payload** | **String** | The payload of a [reply button](https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/structured-messages/#reply-buttons) response message. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::TextMessage.new(type: null,
                                 text: Hello!,
                                 html_text: &lt;h1&gt;Hello!&lt;/h1&gt;,
                                 block_chat_input: null,
                                 markdown_text: # Hello!,
                                 actions: null,
                                 payload: null)
```


