# SmoochApi::AttachmentsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remove_attachment**](AttachmentsApi.md#remove_attachment) | **POST** /v1.1/apps/{appId}/attachments/remove | 
[**upload_attachment**](AttachmentsApi.md#upload_attachment) | **POST** /v1.1/apps/{appId}/attachments | 


# **remove_attachment**
> remove_attachment(appId, attachmentRemoveBody)



Remove an attachment uploaded to Smooch.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AttachmentsApi.new

appId = "appId_example" # String | Identifies the app.

attachmentRemoveBody = SmoochApi::AttachmentRemove.new # AttachmentRemove | Body for a removeAttachment request. 


begin
  api_instance.remove_attachment(appId, attachmentRemoveBody)
rescue SmoochApi::ApiError => e
  puts "Exception when calling AttachmentsApi->remove_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **attachmentRemoveBody** | [**AttachmentRemove**](AttachmentRemove.md)| Body for a removeAttachment request.  | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_attachment**
> AttachmentResponse upload_attachment(appId, source, access, opts)



Upload an attachment to Smooch to use in future messages.

### Example
```ruby
# load the gem
require 'smooch-api'
# setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AttachmentsApi.new

appId = "appId_example" # String | Identifies the app.

source = File.new("/path/to/file.txt") # File | File to be uploaded

access = "access_example" # String | Access level for the resulting file

opts = { 
  _for: "_for_example", # String | The intended container for the attachment
  appUserId: "appUserId_example", # String | The appUserId of the user that will receive the attachment Used in attachments for messages 
  userId: "userId_example" # String | The userId of the user that will receive the attachment Used in attachments for messages 
}

begin
  result = api_instance.upload_attachment(appId, source, access, opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AttachmentsApi->upload_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **source** | **File**| File to be uploaded | 
 **access** | **String**| Access level for the resulting file | 
 **_for** | **String**| The intended container for the attachment | [optional] 
 **appUserId** | **String**| The appUserId of the user that will receive the attachment Used in attachments for messages  | [optional] 
 **userId** | **String**| The userId of the user that will receive the attachment Used in attachments for messages  | [optional] 

### Return type

[**AttachmentResponse**](AttachmentResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



