# SmoochApi::Client

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier for the client. Must be globally unique. | 
**active** | **BOOLEAN** | Flag indicating if the client is active. | [optional] 
**lastSeen** | **String** | The date time the client was last seen. | [optional] 
**platform** | **String** | The client&#39;s platform. See [**IntegrationTypeEnum**](Enums.md#IntegrationTypeEnum) for available values. | 
**integrationId** | **String** | The ID of the integration that the client was created for. | [optional] 
**pushNotificationToken** | **String** | The GCM or APN token to be used for sending push notifications to the device. Applies to only *android* and *ios* clients.  | [optional] 
**appVersion** | **String** | A reserved string field for reporting the app version running on the device. | [optional] 
**displayName** | **String** | The client&#39;s display name. | [optional] 
**info** | [**ClientInfo**](ClientInfo.md) |  | [optional] 
**raw** | **Object** | An Object with raw properties that vary for each client platform. All keys are optional and not guaranteed to be available. | [optional] 


