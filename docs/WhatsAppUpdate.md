# SunshineConversationsClient::WhatsAppUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] 
**hsm_fallback_language** | **String** | Specify a fallback language to use when sending WhatsApp message template using the short hand syntax. Defaults to en_US. See WhatsApp documentation for more info. | [optional] [default to &#39;en_US&#39;]
**account_id** | **String** | The business ID associated with the WhatsApp account. In combination with accountManagementAccessToken, it’s used for Message Template Reconstruction. | [optional] 
**account_management_access_token** | **String** | An access token associated with the accountId used to query the WhatsApp Account Management API. In combination with accountId, it’s used for Message Template Reconstruction. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::WhatsAppUpdate.new(display_name: My awesome integration,
                                 hsm_fallback_language: null,
                                 account_id: your_whatsApp_account_id,
                                 account_management_access_token: your_access_token)
```


