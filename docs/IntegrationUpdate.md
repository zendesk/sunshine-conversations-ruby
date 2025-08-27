# SunshineConversationsClient::IntegrationUpdate

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::IntegrationUpdate.openapi_one_of
# =>
# [
#   :'AndroidUpdate',
#   :'AppleUpdate',
#   :'CustomUpdate',
#   :'InstagramUpdate',
#   :'IosUpdate',
#   :'LineUpdate',
#   :'MailgunUpdate',
#   :'MessageBirdUpdate',
#   :'MessengerUpdate',
#   :'TelegramUpdate',
#   :'TwilioUpdate',
#   :'TwitterUpdate',
#   :'UnityUpdate',
#   :'ViberUpdate',
#   :'WebUpdate',
#   :'WhatsAppUpdate'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::IntegrationUpdate.build(data)
# => #<AndroidUpdate:0x00007fdd4aab02a0>

SunshineConversationsClient::IntegrationUpdate.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AndroidUpdate`
- `AppleUpdate`
- `CustomUpdate`
- `InstagramUpdate`
- `IosUpdate`
- `LineUpdate`
- `MailgunUpdate`
- `MessageBirdUpdate`
- `MessengerUpdate`
- `TelegramUpdate`
- `TwilioUpdate`
- `TwitterUpdate`
- `UnityUpdate`
- `ViberUpdate`
- `WebUpdate`
- `WhatsAppUpdate`
- `nil` (if no type matches)

