# SunshineConversationsClient::IntegrationType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**integration_type** | **String** | The type of the integration to deliver the message to. Can be set to &#x60;none&#x60; if sending a [silent message](https://docs.smooch.io/guide/sending-messages/#silent-messages). Will return an error if the user does not have a client of that type attached to the conversation.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::IntegrationType.new(integration_type: whatsapp)
```


