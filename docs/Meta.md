# SunshineConversationsClient::Meta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_more** | **Boolean** | A flag that indicates if there are more records that can be fetched. | [optional] 
**after_cursor** | **String** | A record id that can be used as a &#x60;page[after]&#x60; parameter in a new request to get the next page.  Not specified if there are no subsequent pages.  | [optional] 
**before_cursor** | **String** | A record id that can be used as a &#x60;page[before]&#x60; parameter in a new request to get the previous page.  Not specified if there are no previous pages.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Meta.new(has_more: null,
                                 after_cursor: 55c8d9758590aa1900b9b9f6,
                                 before_cursor: 55c8d9758590aa1900b9b9f6)
```


