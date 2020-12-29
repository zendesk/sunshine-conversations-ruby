# SunshineConversationsClient::Page1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**after** | **String** | A record id. Results will only contain the records that come after the specified record.  Only one of &#x60;after&#x60; or &#x60;before&#x60; can be provided, not both.  | [optional] 
**before** | **String** | A record id. Results will only contain the records that come before the specified record. Only one of &#x60;after&#x60; or &#x60;before&#x60; can be provided, not both.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Page1.new(after: 5e1606762556d93e9c176f69,
                                 before: 5e1606762556d93e9c176f69)
```


