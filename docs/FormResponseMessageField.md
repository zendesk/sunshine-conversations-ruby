# SunshineConversationsClient::FormResponseMessageField

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The field type. | 
**name** | **String** | The name of the field. Must be unique per form or formResponse. | 
**label** | **String** | The label of the field. What the field is displayed as on Web Messenger. | 
**text** | **String** | Specifies the response for a text field. | [optional] 
**email** | **String** | Specifies the response for a email field. | [optional] 
**select** | **Array&lt;Object&gt;** | Array of objects representing the response for a field of type select. Form and formResponse messages only. | [optional] 
**quoted_message_id** | **String** | The messageId for the form that this response belongs to. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FormResponseMessageField.new(type: null,
                                 name: null,
                                 label: null,
                                 text: null,
                                 email: null,
                                 select: null,
                                 quoted_message_id: null)
```


