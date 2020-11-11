# SunshineConversationsClient::Device

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the device. | [optional] 
**type** | **String** | The type of integration that the device represents. | [optional] 
**guid** | **String** | A unique identifier for the device, generated client-side by the SDK. | [optional] 
**client_id** | **String** | The id of the client to which this device is associated. | [optional] 
**status** | **String** | The device status. Indicates if the device will receive push notifications or not. | [optional] 
**integration_id** | **String** | The ID of the integration that the device was created for. | [optional] 
**last_seen** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the last time the user interacted with this device. | [optional] 
**push_notification_token** | **String** | The token used for push notifications on Android and iOS devices. | [optional] 
**info** | [**Object**](.md) | A flat curated object with properties that vary for each SDK platform. All keys are optional and not guaranteed to be available. | [optional] 
**app_version** | **String** | Version of the mobile app in which the SDK is embedded. Not applicable for devices of type web. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Device.new(id: de13bee15b51033b34162411,
                                 type: null,
                                 guid: null,
                                 client_id: null,
                                 status: null,
                                 integration_id: null,
                                 last_seen: null,
                                 push_notification_token: null,
                                 info: null,
                                 app_version: null)
```


