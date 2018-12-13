# SmoochApi::AppUserApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_app_user**](AppUserApi.md#delete_app_user) | **DELETE** /v1.1/apps/{appId}/appusers/{userId} | 
[**delete_app_user_profile**](AppUserApi.md#delete_app_user_profile) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/profile | 
[**get_app_user**](AppUserApi.md#get_app_user) | **GET** /v1.1/apps/{appId}/appusers/{userId} | 
[**get_app_user_auth_code**](AppUserApi.md#get_app_user_auth_code) | **GET** /v1.1/apps/{appId}/appusers/{userId}/authcode | 
[**get_app_user_business_system_ids**](AppUserApi.md#get_app_user_business_system_ids) | **GET** /v1.1/apps/{appId}/appusers/{userId}/businesssystems | 
[**get_app_user_entity_ids**](AppUserApi.md#get_app_user_entity_ids) | **GET** /v1.1/apps/{appId}/appusers/{userId}/channels | 
[**get_link_requests**](AppUserApi.md#get_link_requests) | **GET** /v1.1/apps/{appId}/appusers/{userId}/linkrequest | 
[**link_app_user**](AppUserApi.md#link_app_user) | **POST** /v1.1/apps/{appId}/appusers/{userId}/channels | 
[**post_image_message**](AppUserApi.md#post_image_message) | **POST** /v1.1/apps/{appId}/appusers/{userId}/images | 
[**pre_create_app_user**](AppUserApi.md#pre_create_app_user) | **POST** /v1.1/apps/{appId}/appusers | 
[**unlink_app_user**](AppUserApi.md#unlink_app_user) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/channels/{channel} | 
[**update_app_user**](AppUserApi.md#update_app_user) | **PUT** /v1.1/apps/{appId}/appusers/{userId} | 


# **delete_app_user**
> delete_app_user(appId, userId, )



Delete specified app user.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  api_instance.delete_app_user(appId, userId, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->delete_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_app_user_profile**
> AppUserResponse delete_app_user_profile(appId, userId, )



Delete specified app user's profile.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.delete_app_user_profile(appId, userId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->delete_app_user_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_user**
> AppUserResponse get_app_user(appId, userId, )



Get the specified app user.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.get_app_user(appId, userId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_user_auth_code**
> AuthCodeResponse get_app_user_auth_code(appId, userId, )



Get an auth code for facilitating a channel transfer

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.get_app_user_auth_code(appId, userId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_app_user_auth_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AuthCodeResponse**](AuthCodeResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_user_business_system_ids**
> AppUserBusinessSystemsResponse get_app_user_business_system_ids(appId, userId, )



Get specified app user's business system IDs.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.get_app_user_business_system_ids(appId, userId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_app_user_business_system_ids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserBusinessSystemsResponse**](AppUserBusinessSystemsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_user_entity_ids**
> AppUserChannelsResponse get_app_user_entity_ids(appId, userId, )



Get specified app user's channel entity IDs.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.get_app_user_entity_ids(appId, userId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_app_user_entity_ids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserChannelsResponse**](AppUserChannelsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_link_requests**
> LinkRequestResponse get_link_requests(appId, userId, integrationIds)



Fetch link requests for the specified app user.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

integrationIds = ["integrationIds_example"] # Array<String> | List of integration IDs


begin
  result = api_instance.get_link_requests(appId, userId, integrationIds)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_link_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **integrationIds** | [**Array&lt;String&gt;**](String.md)| List of integration IDs | 

### Return type

[**LinkRequestResponse**](LinkRequestResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **link_app_user**
> AppUserResponse link_app_user(appId, userId, appUserLinkBody)



Link specified app user to given channel.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

appUserLinkBody = SmoochApi::AppUserLink.new # AppUserLink | Body for a linkAppUser request.


begin
  result = api_instance.link_app_user(appId, userId, appUserLinkBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->link_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **appUserLinkBody** | [**AppUserLink**](AppUserLink.md)| Body for a linkAppUser request. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_image_message**
> MessageResponse post_image_message(appId, userId, source, role)



Send an image message to the conversation.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

source = File.new("/path/to/file.txt") # File | Image to be uploaded

role = "role_example" # String | Role of the sender


begin
  result = api_instance.post_image_message(appId, userId, source, role)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->post_image_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **source** | **File**| Image to be uploaded | 
 **role** | **String**| Role of the sender | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **pre_create_app_user**
> AppUserResponse pre_create_app_user(appId, appUserPreCreateBody)



Pre-create an app user.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

appUserPreCreateBody = SmoochApi::AppUserPreCreate.new # AppUserPreCreate | Body for a preCreateAppUser request.


begin
  result = api_instance.pre_create_app_user(appId, appUserPreCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->pre_create_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **appUserPreCreateBody** | [**AppUserPreCreate**](AppUserPreCreate.md)| Body for a preCreateAppUser request. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unlink_app_user**
> unlink_app_user(appId, userId, channel)



Unlink specified app user from given channel.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

channel = "channel_example" # String | Name of the channel.


begin
  api_instance.unlink_app_user(appId, userId, channel)
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->unlink_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **channel** | **String**| Name of the channel. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_app_user**
> AppUserResponse update_app_user(appId, userId, appUserUpdateBody)



Update the specified app user.

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

api_instance = SmoochApi::AppUserApi.new

appId = "appId_example" # String | Identifies the app.

userId = "userId_example" # String | Identifies the user. Can be either the smoochId or the userId.

appUserUpdateBody = SmoochApi::AppUserUpdate.new # AppUserUpdate | Body for an updateAppUser request.


begin
  result = api_instance.update_app_user(appId, userId, appUserUpdateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->update_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Identifies the app. | 
 **userId** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **appUserUpdateBody** | [**AppUserUpdate**](AppUserUpdate.md)| Body for an updateAppUser request. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



