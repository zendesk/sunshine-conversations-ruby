# SunshineConversationsClient::AuthorWebhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The &#x60;type&#x60; of the author. | 
**user_id** | **String** | The id of the user. Only supported when author &#x60;type&#x60; is &#x60;user&#x60;. | [optional] 
**user** | [**User2**](User2.md) | The user that authored the message or activity. &#x60;profile&#x60; is included in the payload if the &#x60;includeFullUser&#x60; option is enabled. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::AuthorWebhook.new(type: null,
                                 user_id: 5963c0d619a30a2e00de36b8,
                                 user: null)
```


