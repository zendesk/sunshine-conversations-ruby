# SunshineConversationsClient::Author

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of the author. | 
**user_id** | **String** | The id of the user. Only supported when &#x60;type&#x60; is user. | [optional] 
**user_external_id** | **String** | The externalId of the user. Only supported when &#x60;type&#x60; is user. | [optional] 
**display_name** | **String** | The display name of the message author. | [optional] 
**avatar_url** | **String** | A custom message icon url. The image must be in either JPG, PNG, or GIF format | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Author.new(type: business,
                                 user_id: 5963c0d619a30a2e00de36b8,
                                 user_external_id: your-own-id,
                                 display_name: Steve,
                                 avatar_url: null)
```


