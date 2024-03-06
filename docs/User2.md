# SunshineConversationsClient::User2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the user. | [optional] 
**external_id** | **String** | An optional ID that can also be used to retrieve the user.  | [optional] 
**signed_up_at** | **String** |  | [optional] 
**profile** | [**Profile**](Profile.md) |  | [optional] 
**metadata** | **Object** |  | [optional] 
**identities** | [**Array&lt;Identity&gt;**](Identity.md) | The user&#39;s connected identities. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::User2.new(id: 7494535bff5cef41a15be74d,
                                 external_id: your-own-id,
                                 signed_up_at: null,
                                 profile: null,
                                 metadata: null,
                                 identities: null)
```


