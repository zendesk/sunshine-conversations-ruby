# SmoochApi::AppUser

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **String** | The app user&#39;s ID, generated automatically. | 
**user_id** | **String** | The app user&#39;s userId. This ID is specified by the appMaker.  | [optional] 
**given_name** | **String** | The app user&#39;s given name. | [optional] 
**surname** | **String** | The app user&#39;s surname. | [optional] 
**email** | **String** | The app user&#39;s email. | [optional] 
**signed_up_at** | **String** | A datetime string with the format *yyyy-mm-ddThh:mm:ssZ* representing the moment an appUser was created. | [optional] 
**properties** | **Object** | Custom properties for the app user. | 
**conversation_started** | **BOOLEAN** | Flag indicating if the conversation has started for the app user. | 
**clients** | [**Array&lt;Client&gt;**](Client.md) | List of clients associated with the app user. | [optional] 
**pending_clients** | [**Array&lt;Client&gt;**](Client.md) | As clients, but containing linked clients which have not been confirmed yet (i.e. Twilio SMS). | [optional] 


