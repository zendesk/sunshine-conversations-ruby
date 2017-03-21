# SmoochApi::InitApi

All URIs are relative to *https://api.smooch.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**init**](InitApi.md#init) | **POST** /init | 


# **init**
> InitResponse init(init_body)



This API is called by an iOS, Android, or browser client when the app is first loaded. It serves a number of purposes. 1. Initializes a new *appUser* and *client* if they don’t yet exist. 2. Updates an existing app user’s profile and client information. 3. Authenticates the *appUser* if *jwt* credentials are provided. 

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

api_instance = SmoochApi::InitApi.new

init_body = SmoochApi::Init.new # Init | Body for an init request.


begin
  result = api_instance.init(init_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling InitApi->init: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **init_body** | [**Init**](Init.md)| Body for an init request. | 

### Return type

[**InitResponse**](InitResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



