# SunshineConversationsClient::SwitchboardIntegrationCreateBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Identifier for use in control transfer protocols. Restricted to alphanumeric characters, &#x60;-&#x60; and &#x60;_&#x60;. | 
**integration_id** | **String** | The id of the integration to link to the switchboard integration. Must be used when linking a custom integration. One of &#x60;integrationId&#x60; or &#x60;integrationType&#x60; must be provided. | [optional] 
**integration_type** | **String** | The type of the integration to link to the switchboard integration. Must be used when linking an OAuth integration. One of &#x60;integrationId&#x60; or &#x60;integrationType&#x60; must be provided. | [optional] 
**deliver_standby_events** | **Boolean** |  | [optional] 
**next_switchboard_integration_id** | **String** |  | [optional] 
**message_history_count** | **Integer** | Number of messages to include in the message history context. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::SwitchboardIntegrationCreateBody.new(name: bot,
                                 integration_id: null,
                                 integration_type: null,
                                 deliver_standby_events: null,
                                 next_switchboard_integration_id: null,
                                 message_history_count: 5)
```


