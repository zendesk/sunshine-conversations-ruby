# SunshineConversationsClient::Telegram

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a Telegram integration, acquire the required information from the user and call the Create Integration endpoint.  | [optional] [default to &#39;telegram&#39;]
**token** | **String** | Telegram Bot Token. | 
**username** | **String** | Username of the botId | [optional] [readonly] 
**bot_id** | **String** | A human-friendly name used to identify the integration. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Telegram.new(type: null,
                                 token: 192033615:AAEuee2FS2JYKWfDlTulfygjaIGJi4s,
                                 username: null,
                                 bot_id: null)
```


