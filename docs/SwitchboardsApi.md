# SunshineConversationsClient::SwitchboardsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_switchboard**](SwitchboardsApi.md#create_switchboard) | **POST** /v2/apps/{appId}/switchboards | Create Switchboard
[**delete_switchboard**](SwitchboardsApi.md#delete_switchboard) | **DELETE** /v2/apps/{appId}/switchboards/{switchboardId} | Delete Switchboard
[**list_switchboards**](SwitchboardsApi.md#list_switchboards) | **GET** /v2/apps/{appId}/switchboards | List Switchboards
[**update_switchboard**](SwitchboardsApi.md#update_switchboard) | **PATCH** /v2/apps/{appId}/switchboards/{switchboardId} | Update Switchboard



## create_switchboard

> SwitchboardResponse create_switchboard(app_id)

Create Switchboard

Create a switchboard.

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

api_instance = SunshineConversationsClient::SwitchboardsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
# Be sure to add the required body parameters

begin
  #Create Switchboard
  result = api_instance.create_switchboard(app_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardsApi->create_switchboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**SwitchboardResponse**](SwitchboardResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_switchboard

> Object delete_switchboard(app_id, switchboard_id)

Delete Switchboard

Deletes the switchboard and all its switchboard integrations. The integrations linked to these switchboard integrations are not deleted and will start receiving all conversation events.

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

api_instance = SunshineConversationsClient::SwitchboardsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
switchboard_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard.
# Be sure to add the required body parameters

begin
  #Delete Switchboard
  result = api_instance.delete_switchboard(app_id, switchboard_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardsApi->delete_switchboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **switchboard_id** | **String**| Identifies the switchboard. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_switchboards

> SwitchboardListResponse list_switchboards(app_id)

List Switchboards

Lists all switchboards belonging to the app. 

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

api_instance = SunshineConversationsClient::SwitchboardsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
# Be sure to add the required body parameters

begin
  #List Switchboards
  result = api_instance.list_switchboards(app_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardsApi->list_switchboards: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**SwitchboardListResponse**](SwitchboardListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_switchboard

> SwitchboardResponse update_switchboard(app_id, switchboard_id, switchboard_update_body)

Update Switchboard

Updates a switchboard record.

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

api_instance = SunshineConversationsClient::SwitchboardsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
switchboard_id = '5d8cff3cd55b040010928b5b' # String | Identifies the switchboard.
switchboard_update_body = SunshineConversationsClient::SwitchboardUpdateBody.new # SwitchboardUpdateBody | 
# Be sure to add the required body parameters

begin
  #Update Switchboard
  result = api_instance.update_switchboard(app_id, switchboard_id, switchboard_update_body)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling SwitchboardsApi->update_switchboard: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **switchboard_id** | **String**| Identifies the switchboard. | 
 **switchboard_update_body** | [**SwitchboardUpdateBody**](SwitchboardUpdateBody.md)|  | 

### Return type

[**SwitchboardResponse**](SwitchboardResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

