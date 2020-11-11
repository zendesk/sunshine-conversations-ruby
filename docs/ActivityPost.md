# SunshineConversationsClient::ActivityPost

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Author**](Author.md) | The author of the activity. | 
**type** | **String** | If the author type is &#x60;user&#x60;, only &#x60;conversation:read&#x60; is supported. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ActivityPost.new(author: null,
                                 type: null)
```


