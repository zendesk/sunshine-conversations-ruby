# SunshineConversationsClient::UserAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signed_up_at** | **String** |  | [optional] 
**to_be_retained** | **Boolean** |  | [optional] 
**profile** | [**Profile**](Profile.md) |  | [optional] 
**metadata** | **Hash** |  | [optional] 
**identities** | [**Array&lt;Identity&gt;**](Identity.md) | The user&#39;s connected identities. | [optional] [readonly] 
**authenticated** | **Boolean** | Whether or not the user has authenticated, either via JWT or via the Help Center | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::UserAllOf.new(signed_up_at: null,
                                 to_be_retained: null,
                                 profile: null,
                                 metadata: null,
                                 identities: null,
                                 authenticated: null)
```


