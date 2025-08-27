# SunshineConversationsClient::AppsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app**](AppsApi.md#create_app) | **POST** /v2/apps | Create App
[**delete_app**](AppsApi.md#delete_app) | **DELETE** /v2/apps/{appId} | Delete App
[**get_app**](AppsApi.md#get_app) | **GET** /v2/apps/{appId} | Get App
[**list_apps**](AppsApi.md#list_apps) | **GET** /v2/apps | List Apps
[**update_app**](AppsApi.md#update_app) | **PATCH** /v2/apps/{appId} | Update App



## create_app

> AppResponse create_app(app_create_body)

Create App

Creates a new app. When using [service account](#service-accounts) credentials, the service account is automatically granted access to the app.

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

api_instance = SunshineConversationsClient::AppsApi.new
app_create_body =  # AppCreateBody | 
# Be sure to add the required body parameters

begin
  #Create App
  result = api_instance.create_app(app_create_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppsApi->create_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_create_body** | [**AppCreateBody**](AppCreateBody.md)|  | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_app

> Object delete_app(app_id)

Delete App

Removes the specified app, including all its enabled integrations.

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

api_instance = SunshineConversationsClient::AppsApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
# Be sure to add the required body parameters

begin
  #Delete App
  result = api_instance.delete_app(app_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppsApi->delete_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_app

> AppResponse get_app(app_id)

Get App

Fetches an individual app.

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

api_instance = SunshineConversationsClient::AppsApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
# Be sure to add the required body parameters

begin
  #Get App
  result = api_instance.get_app(app_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppsApi->get_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_apps

> AppListResponse list_apps(opts)

List Apps

Lists all apps that a user is part of. This API is paginated through [cursor pagination](#section/Introduction/API-Pagination-and-Records-Limits).  ```shell /v2/apps?page[after]=5e1606762556d93e9c176f69&page[size]=10 ``` 

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

api_instance = SunshineConversationsClient::AppsApi.new
# Be sure to add the required body parameters
opts = {
  page: , # Page | Contains parameters for applying cursor pagination.
  filter:  # AppListFilter | Contains parameters for filtering the results.
}

begin
  #List Apps
  result = api_instance.list_apps(opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppsApi->list_apps: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | [**Page**](.md)| Contains parameters for applying cursor pagination. | [optional] 
 **filter** | [**AppListFilter**](.md)| Contains parameters for filtering the results. | [optional] 

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_app

> AppResponse update_app(app_id, app_update_body)

Update App

Updates an app.

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

api_instance = SunshineConversationsClient::AppsApi.new
app_id = 5d8cff3cd55b040010928b5b # String | Identifies the app.
app_update_body =  # AppUpdateBody | 
# Be sure to add the required body parameters

begin
  #Update App
  result = api_instance.update_app(app_id, app_update_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling AppsApi->update_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **app_update_body** | [**AppUpdateBody**](AppUpdateBody.md)|  | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

