# SunshineConversationsClient::SwitchboardPassControlFailure

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the event. May be used to ensure that an event is not processed twice in the case of a webhook that is re-tried due to an error or timeout. | [optional] 
**type** | **String** | The type of the event. Will match one of the subscribed triggers for your [webhook](#operation/createWebhook). | [optional] 
**created_at** | **String** | A timestamp signifying when the event was generated. Formatted as &#x60;YYYY-MM-DDThh:mm:ss.SSSZ&#x60;. | [optional] 
**payload** | [**SwitchboardAcceptControlFailureAllOfPayload**](SwitchboardAcceptControlFailureAllOfPayload.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::SwitchboardPassControlFailure.new(id: null,
                                 type: null,
                                 created_at: null,
                                 payload: null)
```


