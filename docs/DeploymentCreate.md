# SmoochApi::DeploymentCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hosting** | **String** | The deployment hosting. See [**DeploymentHostingEnum**](Enums.md#DeploymentHostingEnum) for available values. | 
**baseUrl** | **String** | The base URL to access your WhatsApp EC. Only provide for &#x60;self&#x60; hosted deployments. | [optional] 
**username** | **String** | The username to access your WhatsApp EC. Only provide for &#x60;self&#x60; hosted deployments. | [optional] 
**password** | **String** | The password to access your WhatsApp EC. Only provide for &#x60;self&#x60; hosted deployments. | [optional] 
**callbackUrl** | **String** | The URL to be called by Smooch when the status of the deployment changes. | [optional] 


