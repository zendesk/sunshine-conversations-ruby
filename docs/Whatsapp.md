# SunshineConversationsClient::Whatsapp

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a WhatsApp integration, use your WhatsApp API Client connection information. Sunshine Conversations can provide WhatsApp API Client hosting for approved brands. See our [WhatsApp guide](https://docs.smooch.io/guide/whatsapp/#whatsapp-api-client) for more details on WhatsApp API Client hosting.  | [optional] [default to &#39;whatsapp&#39;]
**deployment_id** | **String** | The Id of the deployment. The integrationId and the appId will be added to the deployment. Additionally, the deployment’s status will be set to integrated. | 
**hsm_fallback_language** | **String** | Specify a fallback language to use when sending WhatsApp message template using the short hand syntax. Defaults to en_US. See WhatsApp documentation for more info. | [optional] [default to &#39;en_US&#39;]
**account_id** | **String** | The business ID associated with the WhatsApp account. In combination with accountManagementAccessToken, it’s used for Message Template Reconstruction. | [optional] 
**account_management_access_token** | **String** | An access token associated with the accountId used to query the WhatsApp Account Management API. In combination with accountId, it’s used for Message Template Reconstruction. | [optional] 
**phone_number** | **String** | The phone number that is associated with the deployment of this integration, if one exists. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Whatsapp.new(type: null,
                                 deployment_id: 55c8d9758590aa1900b9b9aa,
                                 hsm_fallback_language: null,
                                 account_id: your_whatsApp_account_id,
                                 account_management_access_token: your_access_token,
                                 phone_number: 15144441919)
```


