# SunshineConversationsClient::Item

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the item. | 
**description** | **String** | The description of the item. | [optional] 
**media_url** | **String** | The image url attached to the item. | [optional] 
**media_type** | **String** | The MIME type for any image attached in the mediaUrl. | [optional] 
**alt_text** | **String** | An optional description of the media for accessibility purposes. The field will be saved by default with the file name as the value. | [optional] 
**size** | **String** | The size of the image. | [optional] 
**actions** | [**Array&lt;ActionSubset&gt;**](ActionSubset.md) | An array of objects representing the actions associated with the item. | 
**metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Item.new(title: null,
                                 description: null,
                                 media_url: null,
                                 media_type: null,
                                 alt_text: null,
                                 size: null,
                                 actions: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;})
```


