# SunshineConversationsClient::Viber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a Viber integration, acquire the Viber Public Account token from the user and call the Create Integration endpoint.  | [optional] [default to &#39;viber&#39;]
**token** | **String** | Viber Public Account token. | 
**uri** | **String** | Unique URI of the Viber account. | [optional] [readonly] 
**account_id** | **String** | Unique ID of the Viber account. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Viber.new(type: null,
                                 token: 445da6az1s345z78-dazcczb2542zv51a-e0vc5fva17480im9,
                                 uri: null,
                                 account_id: null)
```


