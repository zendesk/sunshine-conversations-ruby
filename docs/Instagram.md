# SunshineConversationsClient::Instagram

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;instagram&#39;]
**page_access_token** | **String** | The Facebook Page Access Token of the Facebook page that is linked to your Instagram account. | 
**app_id** | **String** | Your Facebook App ID. | 
**app_secret** | **String** | Your Facebook App secret. | 
**business_name** | **String** | Your Instagram Business account name | [optional] [readonly] 
**business_username** | **String** | Your Instagram Business unique username | [optional] [readonly] 
**page_id** | **String** | The ID of the Facebook Page linked to your Instagram Business account | [optional] [readonly] 
**business_id** | **String** | The ID of the Instagram Business account | [optional] [readonly] 
**username** | **String** | The Facebook user&#39;s username. This is returned when integrating through the Dashboard | [optional] [readonly] 
**user_id** | **String** | The Facebook user&#39;s user ID. This is returned when integrating through the Dashboard | [optional] [readonly] 

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
                                 user_id: 100885965124932)
```


