# SunshineConversationsClient::AttachmentsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_attachment**](AttachmentsApi.md#delete_attachment) | **POST** /v2/apps/{appId}/attachments/remove | Delete Attachment
[**upload_attachment**](AttachmentsApi.md#upload_attachment) | **POST** /v2/apps/{appId}/attachments | Upload Attachment



## delete_attachment

> Object delete_attachment(app_id, attachment_delete_body)

Delete Attachment

Remove an attachment uploaded to Sunshine Conversations through the Upload attachment API. See [Attachments for Messages](#section/Attachments-for-Messages) to have attachments automatically deleted when deleting messages, conversations or users. <aside class=\"notice\">Note that deleted attachments can remain available on our CDN’s cache up to 15 minutes after the delete call.</aside> 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'
# setup authorization
SunshineConversationsClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure Bearer authorization (JWT): bearerAuth
  # Uncomment this line to use JWTs
  # config.access_token = 'YOUR_JWT'
end

api_instance = SunshineConversationsClient::AttachmentsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
attachment_delete_body = SunshineConversationsClient::AttachmentDeleteBody.new # AttachmentDeleteBody | 
# Be sure to add the required body parameters

begin
  #Delete Attachment
  result = api_instance.delete_attachment(app_id, attachment_delete_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AttachmentsApi->delete_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **attachment_delete_body** | [**AttachmentDeleteBody**](AttachmentDeleteBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_attachment

> AttachmentResponse upload_attachment(app_id, access, source, opts)

Upload Attachment

Upload an attachment to Sunshine Conversations to use in future messages. Files are uploaded using the multipart/form-data content type. Use the returned mediaUrl to send a file, image or carousel message. <aside class=\"notice\">Note that Sunshine Conversations limits the size and type of file you can upload to the platform. See the <a href=\"https://docs.smooch.io/guide/validating-files\">file validation</a> guide for more details.</aside> 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'
# setup authorization
SunshineConversationsClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure Bearer authorization (JWT): bearerAuth
  # Uncomment this line to use JWTs
  # config.access_token = 'YOUR_JWT'
end

api_instance = SunshineConversationsClient::AttachmentsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
access = 'public' # String | The access level for the attachment. Currently the only available access level is public. Private is not supported.
source = File.new('/path/to/file') # File | 
# Be sure to add the required body parameters
opts = {
  _for: 'message', # String | Specifies the intended container for the attachment, to enable automatic attachment deletion (on deletion of associated message, conversation or user). For now, only message is supported. See [Attachments for Messages](#section/Attachments-for-Messages) for details.
  conversation_id: 'c616a583e4c240a871818541' # String | Links the attachment getting uploaded to the conversation ID.
}

begin
  #Upload Attachment
  result = api_instance.upload_attachment(app_id, access, source, opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AttachmentsApi->upload_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **access** | **String**| The access level for the attachment. Currently the only available access level is public. Private is not supported. | [default to &#39;public&#39;]
 **source** | **File**|  | 
 **_for** | **String**| Specifies the intended container for the attachment, to enable automatic attachment deletion (on deletion of associated message, conversation or user). For now, only message is supported. See [Attachments for Messages](#section/Attachments-for-Messages) for details. | [optional] 
 **conversation_id** | **String**| Links the attachment getting uploaded to the conversation ID. | [optional] 

### Return type

[**AttachmentResponse**](AttachmentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

