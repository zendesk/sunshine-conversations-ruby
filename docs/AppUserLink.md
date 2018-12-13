# SmoochApi::AppUserLink

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of the channel to link. | 
**phoneNumber** | **String** | A String of the appUser’s phone number. It must contain the + prefix and the country code. Required for *messenger*, *twilio* and *messagebird* linking.  | [optional] 
**address** | **String** | A String of the appUser’s email address. Required for *mailgun* linking.  | [optional] 
**givenName** | **String** | A String of the appUser’s given name. Used as additional criteria to increase the likelihood of a match. (Optional) Used for *messenger* linking.  | [optional] 
**surname** | **String** | A String of the appUser’s surname. Used as additional criteria to increase the likelihood of a match. (Optional) Used for *messenger* linking.  | [optional] 
**subject** | **String** | Subject for the outgoing email. (Optional) Used for *mailgun* linking.  | [optional] 
**confirmation** | [**Confirmation**](Confirmation.md) | Allows you to specify the strategy used to initiate a link with the target user. | 


