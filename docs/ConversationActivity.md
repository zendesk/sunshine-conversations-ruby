# SmoochApi::ConversationActivity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | The role of the actor. Must be *appMaker*. See [**RoleEnum**](Enums.md#RoleEnum) for available values. | 
**type** | **String** | The type of activity to trigger. Must be either *typing:start* or *typing:stop*. See [**MessageTypeEnum**](Enums.md#MessageTypeEnum) for available values. | 
**name** | **String** | The name of the app maker that starts or stops typing a response. | [optional] 
**avatarUrl** | **String** | The avatar URL of the app maker that starts typing a response. | [optional] 


