# SunshineConversationsClient::Messenger

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;messenger&#39;]
**page_access_token** | **String** | A Facebook Page Access Token. | 
**app_id** | **String** | A Facebook App ID. | 
**app_secret** | **String** | A Facebook App Secret. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Messenger.new(type: null,
                                 page_access_token: your_access_token,
                                 app_id: your_facebook_app_id,
                                 app_secret: your_facebook_app_secret)
```


