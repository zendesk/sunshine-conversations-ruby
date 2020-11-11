# SunshineConversationsClient::Line

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of integration. | [optional] [default to &#39;line&#39;]
**channel_id** | **String** | LINE Channel ID. | 
**channel_secret** | **String** | LINE Channel Secret. | 
**channel_access_token** | **String** | LINE Channel Access Token. | [optional] 
**service_code** | **String** | LINE Service Code. | [optional] 
**switcher_secret** | **String** | LINE Switcher Secret. | [optional] 
**qr_code_url** | **String** | URL provided by LINE in the [Developer Console](https://developers.line.biz/console/). | [optional] 
**line_id** | **String** | LINE Basic ID. Is automatically set when qrCodeUrl is updated. | [optional] [readonly] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Line.new(type: null,
                                 channel_id: 1286564967,
                                 channel_secret: your_line_channel_secret,
                                 channel_access_token: your_line_channel_token,
                                 service_code: your_line_service_code,
                                 switcher_secret: your_line_switcher_secret,
                                 qr_code_url: https://qr-official.line.me/M/1O4fb8.png,
                                 line_id: 104fb8)
```


