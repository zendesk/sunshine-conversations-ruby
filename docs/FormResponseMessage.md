# SunshineConversationsClient::FormResponseMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of message. | [default to &#39;formResponse&#39;]
**fields** | [**Array&lt;FormResponseMessageField&gt;**](FormResponseMessageField.md) | Array of field objects that contain the submitted fields. | 
**text_fallback** | **String** | A string containing the &#x60;label: value&#x60; of all fields, each separated by a newline character. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FormResponseMessage.new(type: null,
                                 fields: null,
                                 text_fallback: null)
```


