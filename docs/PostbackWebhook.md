# SunshineConversationsClient::PostbackWebhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payload** | **String** | The payload associated with the postback. | [optional] 
**metadata** | [**Object**](.md) | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::PostbackWebhook.new(payload: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;})
```


