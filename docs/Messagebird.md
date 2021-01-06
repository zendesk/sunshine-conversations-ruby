# SunshineConversationsClient::Messagebird

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | To configure a MessageBird integration, acquire the accessKey, the signingKey and the MessageBird number you would like to use, then call the Create Integration endpoint. The response will include the integration’s &#x60;_id&#x60; and &#x60;webhookSecret&#x60;, which must be used to configure the webhook in MessageBird. In the Flow Builder for the MessageBird number you’ve used to integrate, add a new step with the following settings: - Create a new Call HTTP endpoint with SMS flow. - Select your desired SMS number for Incoming SMS. - Click on Forward to URL and set its method to POST. - Then, using the integration _id and webhookSecret returned from the create integration call, enter the following into the URL field:  &#x60;https://app.smooch.io/api/messagebird/webhooks/{appId}/{integrationId}/{webhookSecret}&#x60; - Select application/json for the Set Content-Type header field. - Save and publish your changes.  | [optional] [default to &#39;messagebird&#39;]
**access_key** | **String** | The public API key of your MessageBird account. | 
**signing_key** | **String** | The signing key of your MessageBird account. Used to validate the webhooks&#39; origin. | 
**originator** | **String** | Sunshine Conversations will receive all messages sent to this phone number. | 
**webhook_secret** | **String** | The secret that is used to configure webhooks in MessageBird. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Messagebird.new(type: null,
                                 access_key: 9V2iJmd93kFJ390L9495JCl11,
                                 signing_key: Uu6N09Lkdji3820DJIO89I39sl9dJ,
                                 originator: 12262121021,
                                 webhook_secret: 72ade38394d1da51566cede33bd1e67e)
```


