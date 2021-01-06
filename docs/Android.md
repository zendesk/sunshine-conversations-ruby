# SunshineConversationsClient::Android

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure an android integration, first visit the [Firebase Console](https://console.firebase.google.com/). Copy the &#x60;serverKey&#x60; and &#x60;senderId&#x60; from the Cloud Messaging tab in the settings of your project and call the create integrations endpoint with this data. If you would like to continue using your legacy GCM &#x60;serverKey&#x60; you can also obtain it from the [Google Developer Console](https://console.developers.google.com/).  | [optional] [default to &#39;android&#39;]
**server_key** | **String** | Your server key from the fcm console. | [optional] 
**sender_id** | **String** | Your sender id from the fcm console. | [optional] 
**can_user_create_more_conversations** | **Boolean** | Allows users to create more than one conversation on the android integration. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Android.new(type: null,
                                 server_key: &lt;server-key&gt;,
                                 sender_id: &lt;sender-id&gt;,
                                 can_user_create_more_conversations: null)
```


