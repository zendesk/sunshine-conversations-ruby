# SunshineConversationsClient::Messagebird

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;messagebird&#39;]
**access_key** | **String** | The public API key of your MessageBird account. | 
**signing_key** | **String** | The signing key of your MessageBird account. Used to validate the webhooks&#39; origin. | 
**originator** | **String** | Sunshine Conversations will receive all messages sent to this phone number. | 
**webhook_secret** | **String** | The secret that is used to configure webhooks in MessageBird. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Messagebird.new(type: null,
                                 access_key: 9V2iJmd93kFJ390L9495JCl11,
                                 signing_key: Uu6N09Lkdji3820DJIO89I39sl9dJ,
                                 originator: 12262121021,
                                 webhook_secret: 72ade38394d1da51566cede33bd1e67e)
```


