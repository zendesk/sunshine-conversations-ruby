# SunshineConversationsClient::UserUpdateBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signed_up_at** | **String** |  | [optional] 
**profile** | [**Profile**](Profile.md) |  | [optional] 
**metadata** | [**Object**](.md) | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::UserUpdateBody.new(signed_up_at: null,
                                 profile: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;})
```


