# SmoochApi::DeviceInit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier for the client. Must be globally unique. | 
**platform** | **String** | The client&#39;s platform. | 
**push_notification_token** | **String** | The GCM or APN token to be used for sending push notifications to the device. Applies to only *android* and *ios* clients.  | [optional] 
**app_version** | **String** | A reserved string field for reporting the app version running on the device. | [optional] 
**info** | [**ClientInfo**](ClientInfo.md) |  | [optional] 


