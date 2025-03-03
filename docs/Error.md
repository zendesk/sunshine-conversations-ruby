# SunshineConversationsClient::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Error code used for classifying similar error types | [optional] 
**title** | **String** | Description of the error | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Error.new(code: not_found,
                                 title: Resource not found)
```


