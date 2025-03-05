# SunshineConversationsClient::DefaultResponderDefaultResponder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the switchboard integration. | [optional] 
**integration_id** | **String** | The unique ID of the integration. | [optional] 
**integration_type** | **String** | The type of the integration. | [optional] 
**deliver_standby_events** | **Boolean** | Indicates whether the switchboard should deliver standby events. | [optional] 
**next_switchboard_integration_id** | **String** | The unique ID of the next switchboard integration. | [optional] 
**message_history_count** | **Float** | The number of messages to keep in the message history. | [optional] 
**inherited** | **Boolean** | Indicates whether the default responder is inherited from the switchboard&#39;s global config or not. Returns &#x60;false&#x60; if a per-channel responder override has been set for this integration, and &#x60;true&#x60; otherwise. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::DefaultResponderDefaultResponder.new(name: null,
                                 integration_id: 5e4af71a81966cfff3ef6550,
                                 integration_type: null,
                                 deliver_standby_events: null,
                                 next_switchboard_integration_id: null,
                                 message_history_count: null,
                                 inherited: null)
```


