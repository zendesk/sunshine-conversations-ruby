# SunshineConversationsClient::ConversationListFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user&#39;s id. One of &#x60;userId&#x60; or &#x60;userExternalId&#x60; is required, but not both. | [optional] |
| **user_external_id** | **String** | The external Id of the user. One of &#x60;userId&#x60; or &#x60;userExternalId&#x60; is required, but not both. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::ConversationListFilter.new(
  user_id: null,
  user_external_id: null
)
```

