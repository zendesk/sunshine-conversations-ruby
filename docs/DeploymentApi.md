# SmoochApi::DeploymentApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_phone_number**](DeploymentApi.md#activate_phone_number) | **POST** /v1.1/whatsapp/deployments/{deploymentId}/activate | 
[**confirm_code**](DeploymentApi.md#confirm_code) | **POST** /v1.1/whatsapp/deployments/{deploymentId}/code/confirm | 
[**create_deployment**](DeploymentApi.md#create_deployment) | **POST** /v1.1/whatsapp/deployments | 
[**delete_deployment**](DeploymentApi.md#delete_deployment) | **DELETE** /v1.1/whatsapp/deployments/{deploymentId} | 
[**get_deployment**](DeploymentApi.md#get_deployment) | **GET** /v1.1/whatsapp/deployments/{deploymentId} | 
[**list_deployments**](DeploymentApi.md#list_deployments) | **GET** /v1.1/whatsapp/deployments | 


# **activate_phone_number**
> DeploymentResponse activate_phone_number(deploymentId, deploymentActivatePhoneNumberBody)



Activate a phone number on the specified deployment.

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

api_instance = SmoochApi::DeploymentApi.new

deploymentId = "deploymentId_example" # String | Identifies the deployment.

deploymentActivatePhoneNumberBody = SmoochApi::DeploymentActivatePhoneNumber.new # DeploymentActivatePhoneNumber | Body for an activatePhoneNumber request. 


begin
  result = api_instance.activate_phone_number(deploymentId, deploymentActivatePhoneNumberBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling DeploymentApi->activate_phone_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentId** | **String**| Identifies the deployment. | 
 **deploymentActivatePhoneNumberBody** | [**DeploymentActivatePhoneNumber**](DeploymentActivatePhoneNumber.md)| Body for an activatePhoneNumber request.  | 

### Return type

[**DeploymentResponse**](DeploymentResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **confirm_code**
> DeploymentResponse confirm_code(deploymentId, deploymentConfirmCode)



Confirm code to complete phone number activation.

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

api_instance = SmoochApi::DeploymentApi.new

deploymentId = "deploymentId_example" # String | Identifies the deployment.

deploymentConfirmCode = SmoochApi::DeploymentConfirmCode.new # DeploymentConfirmCode | Body for a confirmCode request. 


begin
  result = api_instance.confirm_code(deploymentId, deploymentConfirmCode)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling DeploymentApi->confirm_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentId** | **String**| Identifies the deployment. | 
 **deploymentConfirmCode** | [**DeploymentConfirmCode**](DeploymentConfirmCode.md)| Body for a confirmCode request.  | 

### Return type

[**DeploymentResponse**](DeploymentResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_deployment**
> DeploymentResponse create_deployment(deploymentCreateBody)



Create a WhatsApp deployment.

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

api_instance = SmoochApi::DeploymentApi.new

deploymentCreateBody = SmoochApi::DeploymentCreate.new # DeploymentCreate | Body for a createDeployment request. 


begin
  result = api_instance.create_deployment(deploymentCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling DeploymentApi->create_deployment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentCreateBody** | [**DeploymentCreate**](DeploymentCreate.md)| Body for a createDeployment request.  | 

### Return type

[**DeploymentResponse**](DeploymentResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_deployment**
> delete_deployment(deploymentId, )



Delete the specified deployment.

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

api_instance = SmoochApi::DeploymentApi.new

deploymentId = "deploymentId_example" # String | Identifies the deployment.


begin
  api_instance.delete_deployment(deploymentId, )
rescue SmoochApi::ApiError => e
  puts "Exception when calling DeploymentApi->delete_deployment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentId** | **String**| Identifies the deployment. | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_deployment**
> DeploymentResponse get_deployment(deploymentId, )



Get the specified deployment.

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

api_instance = SmoochApi::DeploymentApi.new

deploymentId = "deploymentId_example" # String | Identifies the deployment.


begin
  result = api_instance.get_deployment(deploymentId, )
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling DeploymentApi->get_deployment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentId** | **String**| Identifies the deployment. | 

### Return type

[**DeploymentResponse**](DeploymentResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_deployments**
> ListDeploymentsResponse list_deployments



List owned WhatsApp deployments.

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

api_instance = SmoochApi::DeploymentApi.new

begin
  result = api_instance.list_deployments
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling DeploymentApi->list_deployments: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListDeploymentsResponse**](ListDeploymentsResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



