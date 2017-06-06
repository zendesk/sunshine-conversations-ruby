# SmoochApi::Client

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier for the client. Must be globally unique. | 
**active** | **BOOLEAN** | Flag indicating if the client is active. | [optional] 
**last_seen** | **String** | The date time the client was last seen. | [optional] 
**platform** | **String** | The client&#39;s platform. | 
**push_notification_token** | **String** | The GCM or APN token to be used for sending push notifications to the device. Applies to only *android* and *ios* clients.  | [optional] 
**app_version** | **String** | A reserved string field for reporting the app version running on the device. | [optional] 
**display_name** | **String** | The client&#39;s display name. | [optional] 
**info** | [**ClientInfo**](ClientInfo.md) |  | [optional] 


