# SmoochApi::Webhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The webhook ID, generated automatically. | 
**target** | **String** | URL to be called when the webhook is triggered. | 
**triggers** | **Array&lt;String&gt;** | An array of triggers you wish to have the webhook listen to. See Enums.md for available values. | 
**secret** | **String** | Secret which will be transmitted with each webhook invocation and can be used to verify the authenticity of the caller. | 
**version** | **String** | The payload version of the webhook. | [optional] 


