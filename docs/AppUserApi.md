# SmoochApi::AppUserApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**app_user_device_update**](AppUserApi.md#app_user_device_update) | **PUT** /apps/{appId}/appusers/{userId}/devices/{deviceId} | 
[**delete_app_user_profile**](AppUserApi.md#delete_app_user_profile) | **DELETE** /apps/{appId}/appusers/{userId}/profile | 
[**get_app_user**](AppUserApi.md#get_app_user) | **GET** /apps/{appId}/appusers/{userId} | 
[**get_app_user_entity_ids**](AppUserApi.md#get_app_user_entity_ids) | **GET** /apps/{appId}/appusers/{userId}/channels | 
[**link_app_user**](AppUserApi.md#link_app_user) | **POST** /apps/{appId}/appusers/{userId}/channels | 
[**post_image_message**](AppUserApi.md#post_image_message) | **POST** /apps/{appId}/appusers/{userId}/images | 
[**pre_create_app_user**](AppUserApi.md#pre_create_app_user) | **POST** /apps/{appId}/appusers | 
[**unlink_app_user**](AppUserApi.md#unlink_app_user) | **DELETE** /apps/{appId}/appusers/{userId}/channels/{channel} | 
[**update_app_user**](AppUserApi.md#update_app_user) | **PUT** /apps/{appId}/appusers/{userId} | 


# **app_user_device_update**
> DeviceResponse app_user_device_update(app_id, user_id, device_id, app_user_device_update_body)



Update specified device information.

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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

device_id = "device_id_example" # String | Identifies the device.

app_user_device_update_body = SmoochApi::DeviceUpdate.new # DeviceUpdate | Body for an updateAppUserDevice request.


begin
  result = api_instance.app_user_device_update(app_id, user_id, device_id, app_user_device_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->app_user_device_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **device_id** | **String**| Identifies the device. | 
 **app_user_device_update_body** | [**DeviceUpdate**](DeviceUpdate.md)| Body for an updateAppUserDevice request. | 

### Return type

[**DeviceResponse**](DeviceResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_app_user_profile**
> AppUserResponse delete_app_user_profile(app_id, user_id, )



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.delete_app_user_profile(app_id, user_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->delete_app_user_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_user**
> AppUserResponse get_app_user(app_id, user_id, )



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.get_app_user(app_id, user_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_user_entity_ids**
> AppUserResponse get_app_user_entity_ids(app_id, user_id, )



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.


begin
  result = api_instance.get_app_user_entity_ids(app_id, user_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->get_app_user_entity_ids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **link_app_user**
> AppUserResponse link_app_user(app_id, user_id, app_user_link_body)



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

app_user_link_body = SmoochApi::AppUserLink.new # AppUserLink | Body for a linkAppUser request.


begin
  result = api_instance.link_app_user(app_id, user_id, app_user_link_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->link_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **app_user_link_body** | [**AppUserLink**](AppUserLink.md)| Body for a linkAppUser request. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_image_message**
> MessageResponse post_image_message(app_id, user_id, source, role)



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

source = File.new("/path/to/file.txt") # File | Image to be uploaded

role = "role_example" # String | Role of the sender


begin
  result = api_instance.post_image_message(app_id, user_id, source, role)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->post_image_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
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
> AppUserResponse pre_create_app_user(app_id, app_user_pre_create_body)



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

app_id = "app_id_example" # String | Identifies the app.

app_user_pre_create_body = SmoochApi::AppUserPreCreate.new # AppUserPreCreate | Body for a preCreateAppUser request.


begin
  result = api_instance.pre_create_app_user(app_id, app_user_pre_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->pre_create_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **app_user_pre_create_body** | [**AppUserPreCreate**](AppUserPreCreate.md)| Body for a preCreateAppUser request. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unlink_app_user**
> unlink_app_user(app_id, user_id, channel)



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

channel = "channel_example" # String | Name of the channel.


begin
  api_instance.unlink_app_user(app_id, user_id, channel)
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->unlink_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **channel** | **String**| Name of the channel. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_app_user**
> AppUserResponse update_app_user(app_id, user_id, app_user_update_body)



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

app_id = "app_id_example" # String | Identifies the app.

user_id = "user_id_example" # String | Identifies the user. Can be either the smoochId or the userId.

app_user_update_body = SmoochApi::AppUserUpdate.new # AppUserUpdate | Body for an updateAppUser request.


begin
  result = api_instance.update_app_user(app_id, user_id, app_user_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppUserApi->update_app_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id** | **String**| Identifies the user. Can be either the smoochId or the userId. | 
 **app_user_update_body** | [**AppUserUpdate**](AppUserUpdate.md)| Body for an updateAppUser request. | 

### Return type

[**AppUserResponse**](AppUserResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



