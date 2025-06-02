# SunshineConversationsClient::Destination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**integration_id** | **String** | The id of the integration to deliver the message to. Will return an error if the integration does not exist or if the user does not have a client for the integration attached to the conversation.  | [optional] 
**integration_type** | **String** | The type of the integration to deliver the message to. Can be set to &#x60;none&#x60; if sending a [silent message](https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/sending-messages/#silent-messages). Will return an error if the user does not have a client of that type attached to the conversation.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Destination.new(integration_id: 582dedf230e788746891281a,
                                 integration_type: whatsapp)
```


