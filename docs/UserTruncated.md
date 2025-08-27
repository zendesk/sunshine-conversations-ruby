# SunshineConversationsClient::UserTruncated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the user. | [optional] |
| **authenticated** | **Boolean** | Whether or not the user has authenticated, either via JWT or via the Help Center | [optional][readonly] |
| **external_id** | **String** | An optional ID that can also be used to retrieve the user.  | [optional] |
| **zendesk_id** | **String** | The ID that links a messaging user to its core Zendesk user counterpart. This ID can be used to fetch the core user record via the Zendesk Support API.  | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::UserTruncated.new(
  id: 7494535bff5cef41a15be74d,
  authenticated: null,
  external_id: your-own-id,
  zendesk_id: 30045042291606
)
```

