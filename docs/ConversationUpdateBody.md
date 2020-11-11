# SunshineConversationsClient::ConversationUpdateBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | A friendly name for the conversation, may be displayed to the business or the user.  | [optional] 
**description** | **String** | A short text describing the conversation. | [optional] 
**icon_url** | **String** | A custom conversation icon url. The image must be in either JPG, PNG, or GIF format | [optional] 
**metadata** | [**Object**](.md) | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ConversationUpdateBody.new(display_name: My conversation,
                                 description: Conversation between Rogers and Carl.,
                                 icon_url: https://www.gravatar.com/image.jpg,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;})
```


