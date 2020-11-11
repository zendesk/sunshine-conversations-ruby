# SunshineConversationsClient::IosUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | A human-friendly name used to identify the integration. &#x60;displayName&#x60; can be unset by changing it to &#x60;null&#x60;. | [optional] 
**certificate** | **String** | The binary of your APN certificate base64 encoded. | [optional] 
**password** | **String** | The password for your APN certificate. | [optional] 
**production** | **Boolean** | The APN environment to connect to (Production, if true, or Sandbox). Defaults to value inferred from certificate if not specified. | [optional] 
**auto_update_badge** | **Boolean** | Use the unread count of the conversation as the application badge. | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the iOS integration. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::IosUpdate.new(display_name: My awesome integration,
                                 certificate: your_APN_certificate,
                                 password: your_APN_password,
                                 production: null,
                                 auto_update_badge: null,
                                 can_user_create_more_conversations: null)
```


