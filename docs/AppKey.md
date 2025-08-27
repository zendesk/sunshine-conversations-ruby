# SunshineConversationsClient::AppKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the API key, used when signing JWTs or accessing the API using Basic Authentication. | [optional] |
| **display_name** | **String** | The name of the API key. | [optional] |
| **secret** | **String** | The secret of the API key, used when signing JWTs or accessing the API using Basic Authentication | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AppKey.new(
  id: app_5723a347f82ba0516cb4ea34,
  display_name: Key 1,
  secret: 5XJ85yjUtRcaQu_pDINblPZb
)
```

