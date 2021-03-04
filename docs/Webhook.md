# SmoochApi::Webhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The webhook ID, generated automatically. | 
**target** | **String** | URL to be called when the webhook is triggered. | 
**triggers** | **Array&lt;String&gt;** | An array of triggers you wish to have the webhook listen to. See [**WebhookTriggersEnum**](Enums.md#WebhookTriggersEnum) for available values. | 
**secret** | **String** | Secret which will be transmitted with each webhook invocation and can be used to verify the authenticity of the caller. | 
**version** | **String** | The payload version of the webhook. | [optional] 
**includeClient** | **BOOLEAN** | Specifies whether webhook payloads should include the client information associated with a conversation in webhook events. | [optional] 
**includeFullAppUser** | **BOOLEAN** | Specifies whether webhook payloads should include the complete appUser schema for appUser events. | [optional] 


