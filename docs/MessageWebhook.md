# SunshineConversationsClient::MessageWebhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the message. | [optional] 
**received** | **String** | A datetime string with the format &#x60;YYYY-MM-DDThh:mm:ss.SSSZ&#x60; representing when Sunshine Conversations received the message. | [optional] 
**author** | [**AuthorWebhook**](AuthorWebhook.md) |  | [optional] 
**content** | [**Content**](Content.md) | The content of the message. | [optional] 
**source** | [**Source**](Source.md) |  | [optional] 
**quoted_message** | [**QuotedMessage**](QuotedMessage.md) | The quoted message is currently only available for WhatsApp and Web Messenger &#x60;formResponse&#x60; messages. | [optional] 
**metadata** | **Hash** |  | [optional] 
**deleted** | **Boolean** | true if the message serves as a placeholder for one that has been deleted. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::MessageWebhook.new(id: 5e552ef595e5206375bb835d,
                                 received: 2019-03-21T18:48:52.760Z,
                                 author: null,
                                 content: null,
                                 source: null,
                                 quoted_message: null,
                                 metadata: null,
                                 deleted: null)
```


