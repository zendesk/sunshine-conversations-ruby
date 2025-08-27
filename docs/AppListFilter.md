# SunshineConversationsClient::AppListFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_account_id** | **String** | When specified, lists only the apps that the service account has access to. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::AppListFilter.new(
  service_account_id: null
)
```

