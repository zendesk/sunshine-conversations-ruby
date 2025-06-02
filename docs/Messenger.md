# SunshineConversationsClient::Messenger

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Facebook Messenger Setup steps: - Take note of your Facebook app ID and secret (apps can be created at developer.facebook.com); - The Facebook app must have been submitted to Meta for app review with the “pages_manage_metadata” (to retrieve Page Access Tokens for the Pages, apps that the app user administers and set a webhook) and “pages_messaging” (to send messages) permissions. - In order to integrate a Facebook Messenger app you must acquire a Page Access Token from your user. Once you have acquired a page access token from your user, call the Create Integration endpoint with your app secret and ID and the user’s page access token.  | [optional] [default to &#39;messenger&#39;]
**page_access_token** | **String** | A Facebook Page Access Token. | 
**app_id** | **String** | A Facebook App ID. | 
**app_secret** | **String** | A Facebook App Secret. | 
**page_id** | **Float** | A Facebook page ID. | [optional] 
**page_name** | **String** | A Facebook page name. | [optional] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to the &lt;a href&#x3D;\&quot;https://developer.zendesk.com/documentation/conversations/messaging-platform/programmable-conversations/switchboard/#default-integration-assignment\&quot;&gt;Switchboard guide&lt;/a&gt;.  | [optional] 
**default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Messenger.new(type: null,
                                 page_access_token: your_access_token,
                                 app_id: your_facebook_app_id,
                                 app_secret: your_facebook_app_secret,
                                 page_id: 123212323432123,
                                 page_name: An Awesome Page,
                                 default_responder_id: null,
                                 default_responder: null)
```


