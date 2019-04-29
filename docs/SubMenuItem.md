# SmoochApi::SubMenuItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | The button text of the menu item. | 
**uri** | **String** | A valid address, like http://smooch.io. Required for a link type item. | [optional] 
**type** | **String** | Can either be link, postback, which correspond to Smooch’s link and postback actions, or submenu for nested menus. See [**MenuItemTypeEnum**](Enums.md#MenuItemTypeEnum) for available values. | 
**payload** | **String** | A payload for a postback. Required for a postback type item. | [optional] 


