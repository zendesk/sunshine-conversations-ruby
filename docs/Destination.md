# SunshineConversationsClient::Destination

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::Destination.openapi_one_of
# =>
# [
#   :'IntegrationId',
#   :'IntegrationType'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::Destination.build(data)
# => #<IntegrationId:0x00007fdd4aab02a0>

SunshineConversationsClient::Destination.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `IntegrationId`
- `IntegrationType`
- `nil` (if no type matches)

