# SmoochApi::AppSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maskCreditCardNumbers** | **BOOLEAN** | Flag specifying whether credit card numbers will be automatically masked if sent through Smooch. | [optional] 
**useAnimalNames** | **BOOLEAN** | Flag specifying whether animal names should be used for anonymous users. | [optional] 
**conversationRetentionSeconds** | **Integer** | Number of seconds of inactivity before a conversation’s messages will be automatically deleted. | [optional] 
**echoPostback** | **BOOLEAN** | A boolean specifying whether a message should be added to the conversation history when a postback button is clicked. | [optional] 
**ignoreAutoConversationStart** | **BOOLEAN** | A boolean specifying whether a non message event coming from a channel will trigger a start conversation event and count as an active user conversation (AUC). Not applicable when using the SDK. | [optional] 


