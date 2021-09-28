# SunshineConversationsClient::InlineObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | The authorization code received via /oauth/authorize | 
**grant_type** | **String** | Must be set to the string &#x60;authorization_code&#x60; | 
**client_id** | **String** | Your integration’s unique identifier | 
**client_secret** | **String** | Your integration’s secret | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::InlineObject.new(code: 658965,
                                 grant_type: authorization_code,
                                 client_id: 5e4af71a81966cfff3ef6550,
                                 client_secret: 5XJ85yjUtRcaQu_pDINblPZb)
```


