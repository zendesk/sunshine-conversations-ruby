# SunshineConversationsClient::MatchCriteriaMailgun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The channel type. | [default to &#39;mailgun&#39;] |
| **integration_id** | **String** | The ID of the integration to link. Must match the provided type. |  |
| **primary** | **Boolean** | Flag indicating whether the client will become the primary for the target conversation once linking is complete. | [optional][default to true] |
| **address** | **String** | The user’s email address. |  |
| **subject** | **String** | May be specified to set the subject for the outgoing email. | [optional][default to &#39;New message from {appName}&#39;] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::MatchCriteriaMailgun.new(
  type: null,
  integration_id: 582dedf230e788746891281a,
  primary: null,
  address: steveb@channel5.com,
  subject: null
)
```

