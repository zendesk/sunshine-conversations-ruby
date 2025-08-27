# SunshineConversationsClient::ActivityMessage

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActivityMessage.openapi_one_of
# =>
# [
#   :'TicketClosed',
#   :'TransferToEmail'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActivityMessage.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActivityMessage.openapi_discriminator_mapping
# =>
# {
#   :'ticket:closed' => :'TicketClosed',
#   :'ticket:transfer:email' => :'TransferToEmail'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActivityMessage.build(data)
# => #<TicketClosed:0x00007fdd4aab02a0>

SunshineConversationsClient::ActivityMessage.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TicketClosed`
- `TransferToEmail`
- `nil` (if no type matches)

