# SunshineConversationsClient::Author

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The author type. Either \&quot;user\&quot; (representing the end user)  or \&quot;business\&quot; (sent on behalf of the business).  | 
**subtypes** | **Array&lt;String&gt;** | A string array that indicates the author&#39;s subtypes. Messages from \&quot;business\&quot; type with an \&quot;AI\&quot; subtype  are generated by AI and a disclaimer is appended to the text of the message sent to the customer.  For third-party channels, the disclaimer is applied for image, file, and text message types. Message with an \&quot;activity\&quot; subtype are generated by system activities.  | [optional] 
**user_id** | **String** | The id of the user. Only supported when &#x60;type&#x60; is user. | [optional] 
**user_external_id** | **String** | The externalId of the user. Only supported when &#x60;type&#x60; is user. | [optional] 
**display_name** | **String** | The display name of the message author. | [optional] 
**avatar_url** | **String** | A custom message icon URL. The image must be JPG, PNG, or GIF format. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Author.new(type: business,
                                 subtypes: null,
                                 user_id: 5963c0d619a30a2e00de36b8,
                                 user_external_id: your-own-id,
                                 display_name: Steve,
                                 avatar_url: null)
```


