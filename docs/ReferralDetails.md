# SunshineConversationsClient::ReferralDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **String** | The source of the referral - MESSENGER_CODE, ADS etc… | [optional] 
**type** | **String** | The type of referral, typically OPEN-THREAD. | [optional] 
**ad_id** | **String** | If the referral came from an ad, this field will be present with the ad’s Id. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ReferralDetails.new(source: MESSENGER_CODE,
                                 type: OPEN-THREAD,
                                 ad_id: 4216212847577)
```


