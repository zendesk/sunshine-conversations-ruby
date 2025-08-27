# SunshineConversationsClient::GetToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | An access token that can now be used to call Sunshine Conversations APIs. | [optional] |
| **token_type** | **String** | Bearer. All issued tokens are of this type. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::GetToken200Response.new(
  access_token: null,
  token_type: null
)
```

