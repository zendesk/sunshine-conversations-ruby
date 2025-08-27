# SunshineConversationsClient::Profile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **given_name** | **String** | The user&#39;s given name (first name). | [optional] |
| **surname** | **String** | The user&#39;s surname (last name). | [optional] |
| **email** | **String** | The user&#39;s email address. | [optional] |
| **avatar_url** | **String** | The user&#39;s avatar. | [optional] |
| **locale** | **String** | End-user&#39;s locale information in BCP 47 format. | [optional] |

## Example

```ruby
require 'sunshine-conversations-client'

instance = SunshineConversationsClient::Profile.new(
  given_name: Jane,
  surname: Doe,
  email: jane.doe@gmail.com,
  avatar_url: https://s3.amazonaws.com/avatar.jpg,
  locale: fr-CA
)
```

