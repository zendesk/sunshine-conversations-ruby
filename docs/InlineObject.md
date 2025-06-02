# SunshineConversationsClient::InlineObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | The authorization code received via the OAuth flow | 
**grant_type** | **String** | Must be set to the string &#x60;authorization_code&#x60; | 
**client_id** | **String** | Your OAuth client ID, provisioned during the partner application process | 
**client_secret** | **String** | Your OAuth client secret, provisioned during the partner application process | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::InlineObject.new(code: 658965,
                                 grant_type: authorization_code,
                                 client_id: 5e4af71a81966cfff3ef6550,
                                 client_secret: 5XJ85yjUtRcaQu_pDINblPZb)
```


