# SunshineConversationsClient::MatchCriteriaTwilio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The channel type. | [default to &#39;twilio&#39;] |
| **integration_id** | **String** | The ID of the integration to link. Must match the provided type. |  |
| **primary** | **Boolean** | Flag indicating whether the client will become the primary for the target conversation once linking is complete. | [optional][default to true] |
| **phone_number** | **String** | The user’s phone number. It must contain the + prefix and the country code. Examples of valid phone numbers: +1 212-555-2368, +12125552368, +1 212 555 2368. Examples of invalid phone numbers: 212 555 2368, 1 212 555 2368.  |  |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::MatchCriteriaTwilio.new(
  type: null,
  integration_id: 582dedf230e788746891281a,
  primary: null,
  phone_number: +15550001234
)
```

