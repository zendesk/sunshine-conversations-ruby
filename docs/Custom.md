# SunshineConversationsClient::Custom

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a custom integration you need to setup a webhook with a set of triggers and target.  | [optional] [default to &#39;custom&#39;]
**webhooks** | [**Array&lt;Webhook&gt;**](Webhook.md) | An array of webhooks associated with the custom integration. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Custom.new(type: null,
                                 webhooks: null)
```


