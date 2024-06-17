# SunshineConversationsClient::Instagram

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Instagram Direct setup steps:   - Take note of your Facebook app ID and secret (apps can be created at [developer.facebook.com](https://developer.facebook.com));   - The Facebook app must have been submitted to Meta for app review with the \&quot;pages_manage_metadata\&quot; (to retrieve Page Access Tokens for the Pages and apps that the app user administers and to set a webhook), \&quot;instagram_basic\&quot;, and \&quot;instagram_manage_messages\&quot; (to retrieve basic Instagram account information and send messages) permissions.   - In order to integrate an Instagram Direct app, you must acquire a Page Access Token from your user. Once you have acquired a page access token from your user, call the Create Integration endpoint with your app secret and ID and the user’s page access token.  | [optional] [default to &#39;instagram&#39;]
**page_access_token** | **String** | The Facebook Page Access Token of the Facebook page that is linked to your Instagram account. | 
**app_id** | **String** | Your Facebook App ID. | 
**app_secret** | **String** | Your Facebook App secret. | 
**business_name** | **String** | Your Instagram Business account name | [optional] [readonly] 
**business_username** | **String** | Your Instagram Business unique username | [optional] [readonly] 
**page_id** | **String** | The ID of the Facebook Page linked to your Instagram Business account | [optional] [readonly] 
**business_id** | **String** | The ID of the Instagram Business account | [optional] [readonly] 
**username** | **String** | The Facebook user&#39;s username. This is returned when integrating through the Dashboard | [optional] [readonly] 
**user_id** | **String** | The Facebook user&#39;s user ID. This is returned when integrating through the Dashboard | [optional] [readonly] 
**default_responder_id** | **String** | The default responder ID for the integration. This is the ID of the responder that will be used to send messages to the user. For more information, refer to &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/switchboard/#per-channel-default-responder\&quot;&gt;Per-channel default responder&lt;/a&gt; guide.  | [optional] 
**default_responder** | [**DefaultResponderDefaultResponder**](DefaultResponderDefaultResponder.md) |  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Instagram.new(type: null,
                                 page_access_token: your_page_access_token,
                                 app_id: your_facebook_app_id,
                                 app_secret: your_facebook_app_secret,
                                 business_name: instagram_name,
                                 business_username: instagram_username,
                                 page_id: 106731941223392,
                                 business_id: 17841444303043201,
                                 username: facebook_username,
                                 user_id: 100885965124932,
                                 default_responder_id: null,
                                 default_responder: null)
```


