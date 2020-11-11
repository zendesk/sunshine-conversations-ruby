# SunshineConversationsClient::PrechatCapture

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**avatar_url** | **String** | Sets the URL of the avatar to use for the automatic reply to the prechat capture messages. | [optional] [default to &#39;undefined&#39;]
**enabled** | **Boolean** | If true, enables the Prechat Capture add-on when the Web Messenger is initialized. | [optional] [default to false]
**enable_email_linking** | **Boolean** | f true and Mailgun is integrated, will automatically link submitted emails. | [optional] [default to false]
**fields** | [**Array&lt;Field&gt;**](Field.md) | Array of Fields. Overrides the default Prechat Capture fields to define a custom form. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::PrechatCapture.new(avatar_url: https://domain.com/images/avatar.png,
                                 enabled: null,
                                 enable_email_linking: null,
                                 fields: [{&quot;type&quot;:&quot;email&quot;,&quot;name&quot;:&quot;email&quot;,&quot;label&quot;:&quot;Email&quot;,&quot;placeholder&quot;:&quot;your@email.com&quot;},{&quot;type&quot;:&quot;text&quot;,&quot;name&quot;:&quot;company-website&quot;,&quot;label&quot;:&quot;Company website&quot;,&quot;placeholder&quot;:&quot;mycompany.com&quot;}])
```


