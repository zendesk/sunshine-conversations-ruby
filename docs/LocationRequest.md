# SunshineConversationsClient::LocationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of action. | [default to &#39;locationRequest&#39;]
**text** | **String** | The button text. | 
**metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::LocationRequest.new(type: null,
                                 text: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;})
```


