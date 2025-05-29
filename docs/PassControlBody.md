# SunshineConversationsClient::PassControlBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchboard_integration** | **String** | The id or the name of the switchboard integration that will become active. May also use the &#x60;next&#x60; keyword to transfer control to the next switchboard integration designated in the switchboard hierarchy configuration | 
**reason** | **String** | Reason for the pass control action. | [optional] 
**metadata** | **Hash** | Flat object containing custom properties. Strings, numbers and booleans are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size. The metadata object will be included in the &#x60;switchboard:passControl&#x60; webhook. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::PassControlBody.new(switchboard_integration: next,
                                 reason: null,
                                 metadata: null)
```


