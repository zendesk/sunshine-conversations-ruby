# SunshineConversationsClient::OAuthEndpointsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](OAuthEndpointsApi.md#authorize) | **GET** /oauth/authorize | Authorize
[**get_token**](OAuthEndpointsApi.md#get_token) | **POST** /oauth/token | Get Token
[**get_token_info**](OAuthEndpointsApi.md#get_token_info) | **GET** /v2/tokenInfo | Get Token Info
[**revoke_access**](OAuthEndpointsApi.md#revoke_access) | **DELETE** /oauth/authorization | Revoke Access



## authorize

> authorize(client_id, response_type, opts)

Authorize

This endpoint begins the OAuth flow. It relies on a browser session for authentication. If the user is not logged in to Zendesk they will be redirected to the login page.  If the user has many Zendesk accounts, they will first be prompted to select the one  they wish to integrate with. They will then be presented with an Allow/Deny dialog,  describing details of the access your integration is requesting.  Use `oauth-bridge.zendesk.com/sc` as the base URL when redirecting the user to this endpoint.  ``` https://oauth-bridge.zendesk.com/sc/oauth/authorize?response_type=code&client_id={client_id} ``` 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'

api_instance = SunshineConversationsClient::OAuthEndpointsApi.new
client_id = 5e4af71a81966cfff3ef6550 # String | Your integration’s unique identifier
response_type = code # String | For now the only acceptable value is code.
# Be sure to add the required body parameters
opts = {
  state: Pending, # String | You may pass in any arbitrary string value here which will be returned to you along with the code via browser redirect.
  redirect_uri: https://example.org # String | You may pass in a redirect_uri to determine which URI the response is redirected to. This URI must be contained in the list configured by your integration. If this option is not passed, the first URI present in the list will be used.
}

begin
  #Authorize
  api_instance.authorize(client_id, response_type, opts)
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling OAuthEndpointsApi->authorize: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Your integration’s unique identifier | 
 **response_type** | **String**| For now the only acceptable value is code. | 
 **state** | **String**| You may pass in any arbitrary string value here which will be returned to you along with the code via browser redirect. | [optional] 
 **redirect_uri** | **String**| You may pass in a redirect_uri to determine which URI the response is redirected to. This URI must be contained in the list configured by your integration. If this option is not passed, the first URI present in the list will be used. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_token

> GetToken200Response get_token(get_token_request)

Get Token

This endpoint is used to exchange an authorization code for an access token.  It should only be used in server-to-server calls.  Use `oauth-bridge.zendesk.com/sc` as the base URL when invoking this endpoint.  ``` POST https://oauth-bridge.zendesk.com/sc/oauth/token ``` 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'

api_instance = SunshineConversationsClient::OAuthEndpointsApi.new
get_token_request =  # GetTokenRequest | 
# Be sure to add the required body parameters

begin
  #Get Token
  result = api_instance.get_token(get_token_request)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling OAuthEndpointsApi->get_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_token_request** | [**GetTokenRequest**](GetTokenRequest.md)|  | 

### Return type

[**GetToken200Response**](GetToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_token_info

> AppResponse get_token_info

Get Token Info

This endpoint can be used to retrieve the app linked to the OAuth token. Typically used after receiving an access token via OAuth, in order to retrieve the app's `id` and `subdomain` to be used in future calls. May also be used to confirm that the credentials are still valid.  Use `oauth-bridge.zendesk.com/sc` as the base URL when invoking this endpoint.  ``` GET https://oauth-bridge.zendesk.com/sc/v2/tokenInfo ``` 

### Example

```ruby
# load the gem
require 'sunshine-conversations-client'

api_instance = SunshineConversationsClient::OAuthEndpointsApi.new
# Be sure to add the required body parameters

begin
  #Get Token Info
  result = api_instance.get_token_info
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling OAuthEndpointsApi->get_token_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_access

> Object revoke_access

Revoke Access

This endpoint is used to revoke your integration's access to the user's app. Revoking access means your integration will no longer be able to interact with the app, and any webhooks the integration had previously configured will be removed.  Calling this endpoint is equivalent to the user removing your integration manually. Your integration's `removeUrl` (if configured) will also be called when an integration is removed in this way. 

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

api_instance = SunshineConversationsClient::OAuthEndpointsApi.new
# Be sure to add the required body parameters

begin
  #Revoke Access
  result = api_instance.revoke_access
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling OAuthEndpointsApi->revoke_access: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

