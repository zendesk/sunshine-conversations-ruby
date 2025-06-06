# SunshineConversationsClient::ActivityMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of system activity that generated the message. The value of this field determines the dynamic content that is rendered to the end-user / agent when viewing this message. Each &#x60;type&#x60; value will have a set of pre-defined, localized strings that describe the activity. | [default to &#39;ticket:transfer:email&#39;]
**data** | **Hash&lt;String, Object&gt;** | No additional data is supplied with the \&quot;ticket:transfer:email\&quot; activity type at this time. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ActivityMessage.new(type: null,
                                 data: null)
```


