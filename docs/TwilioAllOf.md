# SunshineConversationsClient::TwilioAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;twilio&#39;]
**account_sid** | **String** | Twilio Account SID. | 
**auth_token** | **String** | Twilio Auth Token. | 
**phone_number_sid** | **String** | SID for specific phone number. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::TwilioAllOf.new(type: null,
                                 account_sid: ACa1b4c65ee0722712fab89867cb14eac7,
                                 auth_token: 160c024303f53049e1e060fd67ca6aefc,
                                 phone_number_sid: PN0674df0ecee0c9819bca0ff0bc0a159e)
```


