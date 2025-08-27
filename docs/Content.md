# SunshineConversationsClient::Content

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::Content.openapi_one_of
# =>
# [
#   :'CarouselMessage',
#   :'FileMessage',
#   :'FormMessage',
#   :'FormResponseMessage',
#   :'ImageMessage',
#   :'ListMessage',
#   :'LocationMessage',
#   :'TemplateMessage',
#   :'TextMessage'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::Content.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::Content.openapi_discriminator_mapping
# =>
# {
#   :'carousel' => :'CarouselMessage',
#   :'file' => :'FileMessage',
#   :'form' => :'FormMessage',
#   :'formResponse' => :'FormResponseMessage',
#   :'image' => :'ImageMessage',
#   :'list' => :'ListMessage',
#   :'location' => :'LocationMessage',
#   :'template' => :'TemplateMessage',
#   :'text' => :'TextMessage'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::Content.build(data)
# => #<CarouselMessage:0x00007fdd4aab02a0>

SunshineConversationsClient::Content.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CarouselMessage`
- `FileMessage`
- `FormMessage`
- `FormResponseMessage`
- `ImageMessage`
- `ListMessage`
- `LocationMessage`
- `TemplateMessage`
- `TextMessage`
- `nil` (if no type matches)

