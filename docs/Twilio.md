# SunshineConversationsClient::Twilio

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a Twilio integration, acquire the required information from the user and call the Create Integration endpoint.  | [optional] [default to &#39;twilio&#39;]
**account_sid** | **String** | Twilio Account SID. | 
**auth_token** | **String** | Twilio Auth Token. | 
**phone_number_sid** | **String** | SID for specific phone number. One of &#x60;messagingServiceSid&#x60; or &#x60;phoneNumberSid&#x60; must be provided when creating a Twilio integration. | [optional] 
**messaging_service_sid** | **String** | SID for specific messaging service. One of &#x60;messagingServiceSid&#x60; or &#x60;phoneNumberSid&#x60; must be provided when creating a Twilio integration. | [optional] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] 
**default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Twilio.new(type: null,
                                 account_sid: ACa1b4c65ee0722712fab89867cb14eac7,
                                 auth_token: 160c024303f53049e1e060fd67ca6aefc,
                                 phone_number_sid: PN0674df0ecee0c9819bca0ff0bc0a159e,
                                 messaging_service_sid: null,
                                 default_responder_id: null,
                                 default_responder: null)
```


