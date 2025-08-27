# SunshineConversationsClient::ActionSubset

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActionSubset.openapi_one_of
# =>
# [
#   :'Buy',
#   :'Link',
#   :'Postback',
#   :'Webview'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActionSubset.openapi_discriminator_name
# => :'type'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::ActionSubset.build(data)
# => #<Buy:0x00007fdd4aab02a0>

SunshineConversationsClient::ActionSubset.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Buy`
- `Link`
- `Postback`
- `Webview`
- `nil` (if no type matches)

