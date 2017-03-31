# SmoochApi::MenuItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | The button text of the menu item. | 
**uri** | **String** | A valid address, like http://smooch.io. Required for a *link* type item. | [optional] 
**type** | **String** | Can either be [link](https://docs.smooch.io/javascript/#links) or [postback](https://docs.smooch.io/javascript/#postbacks), which correspond to Smooch’s [link and postback actions]((https://docs.smooch.io/javascript/#action-buttons). | 
**payload** | **String** | A payload for a postback. Required for a *postback* type item. | [optional] 


