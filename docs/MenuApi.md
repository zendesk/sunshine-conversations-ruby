# SmoochApi::MenuApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_menu**](MenuApi.md#delete_menu) | **DELETE** /v1.1/apps/{appId}/menu | 
[**get_menu**](MenuApi.md#get_menu) | **GET** /v1.1/apps/{appId}/menu | 
[**update_menu**](MenuApi.md#update_menu) | **PUT** /v1.1/apps/{appId}/menu | 


# **delete_menu**
> MenuResponse delete_menu(app_id, )



Remove the specified app’s menu.

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

api_instance = SmoochApi::MenuApi.new

app_id = "app_id_example" # String | Identifies the app.


begin
  result = api_instance.delete_menu(app_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling MenuApi->delete_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_menu**
> MenuResponse get_menu(app_id, )



Get the specified app’s menu.

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

api_instance = SmoochApi::MenuApi.new

app_id = "app_id_example" # String | Identifies the app.


begin
  result = api_instance.get_menu(app_id, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling MenuApi->get_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_menu**
> MenuResponse update_menu(app_id, menu_update_body)



Configure the specified app’s menu.

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

api_instance = SmoochApi::MenuApi.new

app_id = "app_id_example" # String | Identifies the app.

menu_update_body = SmoochApi::Menu.new # Menu | Body for a updateMenu request.


begin
  result = api_instance.update_menu(app_id, menu_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling MenuApi->update_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **menu_update_body** | [**Menu**](Menu.md)| Body for a updateMenu request. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



