# SunshineConversationsClient::UsersApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /v2/apps/{appId}/users | Create User
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /v2/apps/{appId}/users/{userIdOrExternalId} | Delete User
[**delete_user_personal_information**](UsersApi.md#delete_user_personal_information) | **DELETE** /v2/apps/{appId}/users/{userIdOrExternalId}/personalinformation | Delete User Personal Information
[**get_user**](UsersApi.md#get_user) | **GET** /v2/apps/{appId}/users/{userIdOrExternalId} | Get User
[**update_user**](UsersApi.md#update_user) | **PATCH** /v2/apps/{appId}/users/{userIdOrExternalId} | Update User



## create_user

> UserResponse create_user(app_id, user_create_body)

Create User

Creates a new user.

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

api_instance = SunshineConversationsClient::UsersApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_create_body = SunshineConversationsClient::UserCreateBody.new # UserCreateBody | 
# Be sure to add the required body parameters

begin
  #Create User
  result = api_instance.create_user(app_id, user_create_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_create_body** | [**UserCreateBody**](UserCreateBody.md)|  | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> Object delete_user(app_id, user_id_or_external_id)

Delete User

Delete a user, its clients and its conversation history. The user is considered completely deleted once the `user:delete` webhook is fired. To only delete a user’s personal information, see [Delete User Personal Information](#operation/deleteUserPersonalInformation).

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

api_instance = SunshineConversationsClient::UsersApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
# Be sure to add the required body parameters

begin
  #Delete User
  result = api_instance.delete_user(app_id, user_id_or_external_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_personal_information

> UserResponse delete_user_personal_information(app_id, user_id_or_external_id)

Delete User Personal Information

Delete a user’s personal information. Calling this API will clear `givenName`, `surname`, `email` and `avatarUrl` and every custom property for the specified user. For every client owned by the user, it will also clear `displayName`, `avatarUrl` and any channel specific information stored in the info and raw fields. Calling this API doesn’t delete the user’s conversation history. To fully delete the user, see [Delete User](#operation/deleteUser).

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

api_instance = SunshineConversationsClient::UsersApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
# Be sure to add the required body parameters

begin
  #Delete User Personal Information
  result = api_instance.delete_user_personal_information(app_id, user_id_or_external_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user_personal_information: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> UserResponse get_user(app_id, user_id_or_external_id)

Get User

Fetches an individual user.

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

api_instance = SunshineConversationsClient::UsersApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
# Be sure to add the required body parameters

begin
  #Get User
  result = api_instance.get_user(app_id, user_id_or_external_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> UserResponse update_user(app_id, user_id_or_external_id, user_update_body)

Update User

Updates a user.

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

api_instance = SunshineConversationsClient::UsersApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
user_update_body = SunshineConversationsClient::UserUpdateBody.new # UserUpdateBody | 
# Be sure to add the required body parameters

begin
  #Update User
  result = api_instance.update_user(app_id, user_id_or_external_id, user_update_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 
 **user_update_body** | [**UserUpdateBody**](UserUpdateBody.md)|  | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

