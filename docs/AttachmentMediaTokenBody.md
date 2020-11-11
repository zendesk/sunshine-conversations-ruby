# SunshineConversationsClient::AttachmentMediaTokenBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paths** | **Array&lt;String&gt;** | An array of strings representing the list of attachment paths used to generate the media JWT. One token will be generated for each path. Each token will be valid for 2 hours by default. This value can be modified, see [App Settings](#operation/createApp) for more information. | 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::AttachmentMediaTokenBody.new(paths: null)
```


