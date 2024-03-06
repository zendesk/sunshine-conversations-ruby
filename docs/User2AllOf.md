# SunshineConversationsClient::User2AllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signed_up_at** | **String** |  | [optional] 
**profile** | [**Profile**](Profile.md) |  | [optional] 
**metadata** | **Object** |  | [optional] 
**identities** | [**Array&lt;Identity&gt;**](Identity.md) | The user&#39;s connected identities. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::User2AllOf.new(signed_up_at: null,
                                 profile: null,
                                 metadata: null,
                                 identities: null)
```


