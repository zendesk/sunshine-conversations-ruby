# SunshineConversationsClient::ApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the API key, used when signing JWTs or accessing the API using Basic Authentication. | [optional] |
| **display_name** | **String** | The name of the API key. | [optional] |
| **secret** | **String** | The secret of the API key, used when signing JWTs or accessing the API using Basic Authentication | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ApiKey.new(
  id: int_5e4b0f225aca01092928f917,
  display_name: null,
  secret: Ck1LjzzlUzvlCTtqAdQ2z1QukuBTrN3TIx
)
```

