# SunshineConversationsClient::ConversionEventsBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ConversionEventsBody.openapi_one_of
# =>
# [
#   :'InstagramConversionEventsBody',
#   :'MessengerConversionEventsBody',
#   :'WhatsAppConversionEventsBody'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ConversionEventsBody.build(data)
# => #<InstagramConversionEventsBody:0x00007fdd4aab02a0>

SunshineConversationsClient::ConversionEventsBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `InstagramConversionEventsBody`
- `MessengerConversionEventsBody`
- `WhatsAppConversionEventsBody`
- `nil` (if no type matches)

