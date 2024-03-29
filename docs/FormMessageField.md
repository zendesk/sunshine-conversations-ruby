# SunshineConversationsClient::FormMessageField

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The field type. | 
**name** | **String** | The name of the field. Must be unique per form or formResponse. | 
**label** | **String** | The label of the field. What the field is displayed as on Web Messenger. | 
**text** | **String** | Specifies the response for a text field. | [optional] 
**email** | **String** | Specifies the response for a email field. | [optional] 
**select** | **Array&lt;Object&gt;** | Array of objects representing the response for a field of type select. Form and formResponse messages only. | [optional] 
**placeholder** | **String** | Placeholder text for the field. Form message only. | [optional] 
**min_size** | **Integer** | The minimum allowed length for the response for a field of type text. Form message only. | [optional] [default to 1]
**max_size** | **Integer** | The maximum allowed length for the response for a field of type text. Form message only. | [optional] [default to 128]
**options** | **Array&lt;Object&gt;** | Array of objects representing options for a field of type select. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FormMessageField.new(type: null,
                                 name: null,
                                 label: null,
                                 text: null,
                                 email: null,
                                 select: null,
                                 placeholder: null,
                                 min_size: null,
                                 max_size: null,
                                 options: null)
```


