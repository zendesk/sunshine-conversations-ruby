# SmoochApi::TemplateApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template**](TemplateApi.md#create_template) | **POST** /v1.1/apps/{appId}/templates | 
[**delete_template**](TemplateApi.md#delete_template) | **DELETE** /v1.1/apps/{appId}/templates/{templateId} | 
[**get_template**](TemplateApi.md#get_template) | **GET** /v1.1/apps/{appId}/templates/{templateId} | 
[**list_templates**](TemplateApi.md#list_templates) | **GET** /v1.1/apps/{appId}/templates | 
[**update_template**](TemplateApi.md#update_template) | **PUT** /v1.1/apps/{appId}/templates/{templateId} | 


# **create_template**
> TemplateResponse create_template(app_id, template_create_body)



Create a template for the specified app.

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

api_instance = SmoochApi::TemplateApi.new

app_id = "app_id_example" # String | Identifies the app.

template_create_body = SmoochApi::TemplateCreate.new # TemplateCreate | Body for a createTemplate request. 


begin
  result = api_instance.create_template(app_id, template_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling TemplateApi->create_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **template_create_body** | [**TemplateCreate**](TemplateCreate.md)| Body for a createTemplate request.  | 

### Return type

[**TemplateResponse**](TemplateResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_template**
> delete_template(app_id, template_id)



Delete the specified template.

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

api_instance = SmoochApi::TemplateApi.new

app_id = "app_id_example" # String | Identifies the app.

template_id = "template_id_example" # String | Identifies the template.


begin
  api_instance.delete_template(app_id, template_id)
rescue SmoochApi::ApiError => e
  puts "Exception when calling TemplateApi->delete_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **template_id** | **String**| Identifies the template. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_template**
> TemplateResponse get_template(app_id, template_id)



Get the specified template.

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

api_instance = SmoochApi::TemplateApi.new

app_id = "app_id_example" # String | Identifies the app.

template_id = "template_id_example" # String | Identifies the template.


begin
  result = api_instance.get_template(app_id, template_id)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling TemplateApi->get_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **template_id** | **String**| Identifies the template. | 

### Return type

[**TemplateResponse**](TemplateResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_templates**
> ListTemplatesResponse list_templates(app_id, , opts)



List templates for the specified app.

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

api_instance = SmoochApi::TemplateApi.new

app_id = "app_id_example" # String | Identifies the app.

opts = { 
  limit: 25, # Integer | The number of records to return.
  offset: 0 # Integer | The number of initial records to skip before picking records to return.
}

begin
  result = api_instance.list_templates(app_id, , opts)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling TemplateApi->list_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **limit** | **Integer**| The number of records to return. | [optional] [default to 25]
 **offset** | **Integer**| The number of initial records to skip before picking records to return. | [optional] [default to 0]

### Return type

[**ListTemplatesResponse**](ListTemplatesResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_template**
> TemplateResponse update_template(app_id, template_idtemplate_update_body)



Update the specified template.

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

api_instance = SmoochApi::TemplateApi.new

app_id = "app_id_example" # String | Identifies the app.

template_id = "template_id_example" # String | Identifies the template.

template_update_body = SmoochApi::TemplateUpdate.new # TemplateUpdate | Body for an updateTemplate request. 


begin
  result = api_instance.update_template(app_id, template_idtemplate_update_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling TemplateApi->update_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **template_id** | **String**| Identifies the template. | 
 **template_update_body** | [**TemplateUpdate**](TemplateUpdate.md)| Body for an updateTemplate request.  | 

### Return type

[**TemplateResponse**](TemplateResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



