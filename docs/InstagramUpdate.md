# SunshineConversationsClient::InstagramUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] 
**page_access_token** | **String** | A Facebook Page Access Token. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::InstagramUpdate.new(display_name: My awesome integration,
                                 page_access_token: your_access_token)
```


