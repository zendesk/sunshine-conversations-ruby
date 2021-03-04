# SmoochApi::NotificationPost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | [**NotificationPostDestination**](NotificationPostDestination.md) | The destination of the notification. | 
**messageSchema** | **String** | If specified, the only accepted value is &#x60;whatsapp&#x60;. To be included when sending WhatsApp message templates. | [optional] 
**author** | [**Author**](Author.md) | An object containing role, email, name and avatarUrl. | 
**message** | **Object** | The notification message to send. | 


