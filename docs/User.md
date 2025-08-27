# SunshineConversationsClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the user. | [optional] |
| **authenticated** | **Boolean** | Whether or not the user has authenticated, either via JWT or via the Help Center | [optional][readonly] |
| **external_id** | **String** | An optional ID that can also be used to retrieve the user.  | [optional] |
| **zendesk_id** | **String** | The ID that links a messaging user to its core Zendesk user counterpart. This ID can be used to fetch the core user record via the Zendesk Support API.  | [optional] |
| **signed_up_at** | **String** | The date at which the user signed up. Must be ISO 8601 time format &#x60;YYYY-MM-DDThh:mm:ss.sssZ&#x60;. | [optional] |
| **to_be_retained** | **Boolean** | Flag indicating whether a user should be retained after they have passed their inactive expiry. See [creating deletion schedules for bot-only conversations](https://support.zendesk.com/hc/en-us/articles/8499219792154) for more information. | [optional] |
| **profile** | [**Profile**](Profile.md) |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] |
| **identities** | [**Array&lt;Identity&gt;**](Identity.md) | The user&#39;s connected identities. | [optional][readonly] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::User.new(
  id: 7494535bff5cef41a15be74d,
  authenticated: null,
  external_id: your-own-id,
  zendesk_id: 30045042291606,
  signed_up_at: 2020-05-21T15:53:30.197Z,
  to_be_retained: null,
  profile: null,
  metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
  identities: null
)
```

