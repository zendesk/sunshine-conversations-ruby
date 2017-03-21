# SmoochApi::MenuApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_menu**](MenuApi.md#delete_menu) | **DELETE** /menu | 
[**get_menu**](MenuApi.md#get_menu) | **GET** /menu | 
[**update_menu**](MenuApi.md#update_menu) | **PUT** /menu | 


# **delete_menu**
> MenuResponse delete_menu



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

begin
  result = api_instance.delete_menu
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling MenuApi->delete_menu: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_menu**
> MenuResponse get_menu



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

begin
  result = api_instance.get_menu
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling MenuApi->get_menu: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_menu**
> MenuResponse update_menu(menu_update_body)



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

menu_update_body = SmoochApi::Menu.new # Menu | Body for a updateMenu request.


begin
  result = api_instance.update_menu(menu_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling MenuApi->update_menu: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menu_update_body** | [**Menu**](Menu.md)| Body for a updateMenu request. | 

### Return type

[**MenuResponse**](MenuResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



