# SmoochApi::AppUserPreCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | The app user&#39;s userId. This ID is specified by the appMaker.  | 
**credential_required** | **BOOLEAN** | Flag indicating if the appUser is secured by a JSON Web Token or not. | [optional] 
**given_name** | **String** | The app user&#39;s given name. | [optional] 
**surname** | **String** | The app user&#39;s surname. | [optional] 
**email** | **String** | The app user&#39;s email. | [optional] 
**signed_up_at** | **String** | A datetime string with the format *yyyy-mm-ddThh:mm:ssZ* representing the moment an appUser was created. | [optional] 
**properties** | **Object** | Custom properties for the app user. | [optional] 


