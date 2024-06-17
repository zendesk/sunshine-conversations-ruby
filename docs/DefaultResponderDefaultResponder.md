# SunshineConversationsClient::DefaultResponderDefaultResponder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchboard_id** | **String** | The unique ID of the switchboard. | [optional] 
**app_id** | **String** | Identifies the app. | [optional] 
**integration_id** | **String** | The unique ID of the integration. | [optional] 
**integration_type** | **String** | The type of the integration. | [optional] 
**name** | **String** | The name of the switchboard. | [optional] 
**deliver_standby_events** | **Boolean** | Indicates whether the switchboard should deliver standby events. | [optional] 
**next_switchboard_integration_id** | **String** | The unique ID of the next switchboard integration. | [optional] 
**message_history_count** | **Float** | The number of messages to keep in the message history. | [optional] 
**inherited** | **Boolean** | Indicates whether the switchboard is inherited. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::DefaultResponderDefaultResponder.new(switchboard_id: 5e4af71a81966cfff3ef6551,
                                 app_id: 5e4af71a81966cfff3ef6552,
                                 integration_id: 5e4af71a81966cfff3ef6550,
                                 integration_type: null,
                                 name: null,
                                 deliver_standby_events: null,
                                 next_switchboard_integration_id: null,
                                 message_history_count: null,
                                 inherited: null)
```


