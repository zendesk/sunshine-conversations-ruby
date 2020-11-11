# SunshineConversationsClient::TwitterAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;twitter&#39;]
**tier** | **String** | Your Twitter app’s tier, sandbox, premium or enterprise. | 
**env_name** | **String** | The Twitter dev environments label (required for sandbox and premium tiers). | [optional] 
**consumer_key** | **String** | The consumer key for your Twitter app. | 
**consumer_secret** | **String** | The consumer key secret for your Twitter app. | 
**access_token_key** | **String** | The access token key obtained from your user via oauth. | [optional] 
**access_token_secret** | **String** | The access token secret obtained from your user via oauth. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::TwitterAllOf.new(type: null,
                                 tier: null,
                                 env_name: your_env_label,
                                 consumer_key: your_consumer_key,
                                 consumer_secret: your_consumer_secret,
                                 access_token_key: your_access_token_key,
                                 access_token_secret: your_access_token_secret)
```


