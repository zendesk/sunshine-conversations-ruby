# SunshineConversationsClient::SwitchboardPassControlAllOfPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversation** | [**ConversationTruncated**](ConversationTruncated.md) | The conversation from which the switchboard event was fired. On success, the payload will include an &#x60;activeSwitchboardIntegration&#x60;, representing the switchboard integration that is now in control of the conversation. | [optional] 
**metadata** | **Hash&lt;String, Object&gt;** | Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size.  | [optional] 
**reason** | **String** | Reason for the pass control action, if applicable. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::SwitchboardPassControlAllOfPayload.new(conversation: null,
                                 metadata: {&quot;lang&quot;:&quot;en-ca&quot;},
                                 reason: null)
```


