# SunshineConversationsClient::QuotedMessage

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::QuotedMessage.openapi_one_of
# =>
# [
#   :'QuotedMessageExternalMessageId',
#   :'QuotedMessageMessage'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::QuotedMessage.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::QuotedMessage.openapi_discriminator_mapping
# =>
# {
#   :'externalMessageId' => :'QuotedMessageExternalMessageId',
#   :'message' => :'QuotedMessageMessage'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::QuotedMessage.build(data)
# => #<QuotedMessageExternalMessageId:0x00007fdd4aab02a0>

SunshineConversationsClient::QuotedMessage.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `QuotedMessageExternalMessageId`
- `QuotedMessageMessage`
- `nil` (if no type matches)

