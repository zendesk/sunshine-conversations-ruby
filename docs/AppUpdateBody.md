# SunshineConversationsClient::AppUpdateBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | The friendly name of the app. | [optional] 
**settings** | [**AppSettings**](AppSettings.md) |  | [optional] 
**metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::AppUpdateBody.new(display_name: My App,
                                 settings: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;})
```


