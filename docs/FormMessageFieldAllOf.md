# SunshineConversationsClient::FormMessageFieldAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**placeholder** | **String** | Placeholder text for the field. Form message only. | [optional] 
**min_size** | **Integer** | The minimum allowed length for the response for a field of type text. Form message only. | [optional] [default to 1]
**max_size** | **Integer** | The maximum allowed length for the response for a field of type text. Form message only. | [optional] [default to 128]
**options** | **Array&lt;Object&gt;** | Array of objects representing options for a field of type select. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::FormMessageFieldAllOf.new(placeholder: null,
                                 min_size: null,
                                 max_size: null,
                                 options: null)
```


