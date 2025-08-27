# SunshineConversationsClient::MatchCriteria

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::MatchCriteria.openapi_one_of
# =>
# [
#   :'MatchCriteriaMailgun',
#   :'MatchCriteriaMessagebird',
#   :'MatchCriteriaTwilio',
#   :'MatchCriteriaWhatsapp'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::MatchCriteria.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::MatchCriteria.openapi_discriminator_mapping
# =>
# {
#   :'mailgun' => :'MatchCriteriaMailgun',
#   :'messagebird' => :'MatchCriteriaMessagebird',
#   :'twilio' => :'MatchCriteriaTwilio',
#   :'whatsapp' => :'MatchCriteriaWhatsapp'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'sunshine-conversations-client'

SunshineConversationsClient::MatchCriteria.build(data)
# => #<MatchCriteriaMailgun:0x00007fdd4aab02a0>

SunshineConversationsClient::MatchCriteria.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MatchCriteriaMailgun`
- `MatchCriteriaMessagebird`
- `MatchCriteriaTwilio`
- `MatchCriteriaWhatsapp`
- `nil` (if no type matches)

