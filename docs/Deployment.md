# SmoochApi::Deployment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The deployment ID, generated automatically. | 
**status** | **String** | The deployment status. See [**DeploymentStatusEnum**](Enums.md#DeploymentStatusEnum) for available values. | 
**hosting** | **String** | The deployment hosting. See [**DeploymentHostingEnum**](Enums.md#DeploymentHostingEnum) for available values. | 
**baseUrl** | **String** | The baseUrl of the deployment. Only present for &#x60;self&#x60; hosted deployments. | [optional] 
**username** | **String** | The username of the deployment. Only present for &#x60;self&#x60; hosted deployments. | [optional] 
**phoneNumber** | **String** | The phoneNumber of the deployment. Only present once the deployment has been registered. | [optional] 
**callbackUrl** | **String** | The URL to be called by Smooch when the status of the deployment changes. | [optional] 
**callbackSecret** | **String** | The secret used to secure the callback. | [optional] 
**integrationId** | **String** | The integrationId of the integration using this deployment. | [optional] 
**appId** | **String** | The appId of the integration using this deployment. | [optional] 


