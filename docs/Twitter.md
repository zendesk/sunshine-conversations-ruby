# SunshineConversationsClient::Twitter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To set up a Twitter integration, please follow the steps outlined in the [Twitter Setup Guide](https://docs.smooch.io/guide/twitter/#setup).  | [optional] [default to &#39;twitter&#39;]
**tier** | **String** | Your Twitter app&#39;s tier. Only \&quot;enterprise\&quot; is supported for new integrations. | 
**env_name** | **String** | The Twitter dev environments label. Only required / used for sandbox and premium tiers. | [optional] [readonly] 
**consumer_key** | **String** | The consumer key for your Twitter app. | 
**consumer_secret** | **String** | The consumer key secret for your Twitter app. | 
**access_token_key** | **String** | The access token key obtained from your user via oauth. | 
**access_token_secret** | **String** | The access token secret obtained from your user via oauth. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Twitter.new(type: null,
                                 tier: null,
                                 env_name: null,
                                 consumer_key: your_consumer_key,
                                 consumer_secret: your_consumer_secret,
                                 access_token_key: your_access_token_key,
                                 access_token_secret: your_access_token_secret)
```


