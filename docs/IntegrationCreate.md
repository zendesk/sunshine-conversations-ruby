# SmoochApi::IntegrationCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The integration type. | 
**page_access_token** | **String** | Facebook Page Access Token. Required for *messenger* integrations.  | [optional] 
**app_id** | **String** | Facebook App ID OR WeChat App ID. Required for *messenger* and *wechat* integrations.  | [optional] 
**app_secret** | **String** | Facebook Page App Secret OR WeChat App Secret. Required for *messenger* and *wechat* integrations.  | [optional] 
**account_sid** | **String** | Twilio Account SID. Required for *twilio* integrations.  | [optional] 
**auth_token** | **String** | Twilio Auth Token. Required for *twilio* integrations.  | [optional] 
**phone_number_sid** | **String** | SID for specific phone number. Required for *twilio* integrations.  | [optional] 
**token** | **String** | Telegram Bot Token OR Viber Public Account token. Required for *twilio* and *viber* integrations.  | [optional] 
**channel_access_token** | **String** | LINE Channel Access Token. Required for *line* integrations.  | [optional] 
**encoding_aes_key** | **String** | AES Encoding Key. (Optional) Used for *wechat* integrations.  | [optional] 
**from_address** | **String** | Email will display as coming from this address. (Optional) Used for *frontendEmail* integrations.  | [optional] 
**certificate** | **String** | The binary of your APN certificate base64 encoded. Required for *apn* integrations.  | [optional] 
**password** | **String** | The password for your APN certificate. (Optional) Used for *apn* integrations.  | [optional] 
**auto_update_badge** | **BOOLEAN** | Use the unread count of the conversation as the application badge. (Optional) Used for *apn* integrations.  | [optional] 
**server_key** | **String** | Your server key from the fcm console. Required for *fcm* integrations.  | [optional] 
**sender_id** | **String** | Your sender id from the fcm console. Required for *fcm* integrations.  | [optional] 


