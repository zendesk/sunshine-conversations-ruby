# SunshineConversationsClient::User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the user. | [optional] 
**external_id** | **String** | An optional ID that can also be used to retrieve the user.  | [optional] 
**zendesk_id** | **String** | The ID that links a messaging user to its core Zendesk user counterpart. This ID can be used to fetch the core user record via the Zendesk Support API.  | [optional] 
**signed_up_at** | **String** |  | [optional] 
**to_be_retained** | **Boolean** |  | [optional] 
**profile** | [**Profile**](Profile.md) |  | [optional] 
**metadata** | **Hash** |  | [optional] 
**identities** | [**Array&lt;Identity&gt;**](Identity.md) | The user&#39;s connected identities. | [optional] [readonly] 
**authenticated** | **Boolean** | Whether or not the user has authenticated, either via JWT or via the Help Center | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::User.new(id: 7494535bff5cef41a15be74d,
                                 external_id: your-own-id,
                                 zendesk_id: 30045042291606,
                                 signed_up_at: null,
                                 to_be_retained: null,
                                 profile: null,
                                 metadata: null,
                                 identities: null,
                                 authenticated: null)
```


