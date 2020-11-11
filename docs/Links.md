# SunshineConversationsClient::Links

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prev** | **String** | A link to the previous page. Not specified if there are no previous pages. | [optional] 
**_next** | **String** | A link to the next page. Not specified if there are no subsequent pages. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Links.new(prev: https://api.smooch.io/v2/apps?page[before]&#x3D;fcafad804c39a39648004af9,
                                 _next: https://api.smooch.io/v2/apps?page[after]&#x3D;5ea868f862cdd24abf010b38)
```


