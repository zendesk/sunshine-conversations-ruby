# SunshineConversationsClient::ConversationAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_default** | **Boolean** | Whether the conversation is the default conversation for the user. Will be true for the first personal conversation created for the user, and false in all other cases.  | [optional] 
**display_name** | **String** | A friendly name for the conversation, may be displayed to the business or the user.  | [optional] 
**description** | **String** | A short text describing the conversation. | [optional] 
**icon_url** | **String** | A custom conversation icon url. The image must be in either JPG, PNG, or GIF format | [optional] 
**business_last_read** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the moment the conversation was last marked as read with role business.  | [optional] 
**last_updated_at** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the moment the last message was received in the conversation, or the creation time if no messages have been received yet.  | [optional] 
**created_at** | **String** | A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the creation time of the conversation.  | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::ConversationAllOf.new(is_default: false,
                                 display_name: My conversation,
                                 description: Conversation between Rogers and Carl.,
                                 icon_url: https://www.gravatar.com/image.jpg,
                                 business_last_read: 2020-06-23T14:33:47.492Z,
                                 last_updated_at: 2020-06-26T14:33:47.120Z,
                                 created_at: 2020-06-20T11:26:07.001Z)
```


