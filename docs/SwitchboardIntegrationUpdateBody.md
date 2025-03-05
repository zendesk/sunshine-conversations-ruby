# SunshineConversationsClient::SwitchboardIntegrationUpdateBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Identifier for use in control transfer protocols. Restricted to alphanumeric characters, &#x60;-&#x60; and &#x60;_&#x60;. | [optional] 
**integration_id** | **String** | The id of the integration to link to the switchboard integration. Must be used when linking a custom integration. Can&#39;t provide both &#x60;integrationId&#x60; and &#x60;integrationType&#x60;. | [optional] 
**integration_type** | **String** | The type of the integration to link to the switchboard integration. Must be used when linking an OAuth integration. Can&#39;t provide both &#x60;integrationId&#x60; and &#x60;integrationType&#x60;. | [optional] 
**deliver_standby_events** | **Boolean** | Setting to determine if webhooks should be sent when the switchboard integration is not in control of a conversation (standby status) | [optional] 
**next_switchboard_integration_id** | **String** | The switchboard integration id to which control of a conversation is passed / offered by default. | [optional] 
**message_history_count** | **Integer** | Number of messages to include in the message history context. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::SwitchboardIntegrationUpdateBody.new(name: bot,
                                 integration_id: null,
                                 integration_type: null,
                                 deliver_standby_events: null,
                                 next_switchboard_integration_id: 5ef21b86e933b7355c11c606,
                                 message_history_count: 5)
```


