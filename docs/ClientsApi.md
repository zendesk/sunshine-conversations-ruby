# SunshineConversationsClient::ClientsApi

All URIs are relative to *https://api.smooch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_client**](ClientsApi.md#create_client) | **POST** /v2/apps/{appId}/users/{userIdOrExternalId}/clients | Create Client
[**list_clients**](ClientsApi.md#list_clients) | **GET** /v2/apps/{appId}/users/{userIdOrExternalId}/clients | List Clients
[**remove_client**](ClientsApi.md#remove_client) | **DELETE** /v2/apps/{appId}/users/{userIdOrExternalId}/clients/{clientId} | Remove Client



## create_client

> ClientResponse create_client(app_id, user_id_or_external_id, client_create)

Create Client

Create a client and link it to a channel specified by the `matchCriteria.type`. Note that the client is initially created with a `pending` status. The status of the linking request can be tracked by listening to the `link:match`, `link:success` and `link:failure` webhooks (only available in v1). For more information, see [link-events](https://docs.smooch.io/rest/v1/#link-events).

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

api_instance = SunshineConversationsClient::ClientsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
client_create = {"matchCriteria":{"type":"mailgun","integrationId":"582dedf230e788746891281a","primary":true,"address":"steveb@channel5.com","subject":"New message from {appName}"},"confirmation":{"type":"immediate","message":{"author":{"type":"business","displayName":"Steve","avatarUrl":"https://www.gravatar.com/image.jpg"},"content":{"type":"text","text":"Hello!"},"metadata":{"lang":"en-ca"}}},"target":{"conversationId":"029c31f25a21b47effd7be90"}} # ClientCreate | 
# Be sure to add the required body parameters

begin
  #Create Client
  result = api_instance.create_client(app_id, user_id_or_external_id, client_create)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ClientsApi->create_client: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 
 **client_create** | [**ClientCreate**](ClientCreate.md)|  | 

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_clients

> ClientListResponse list_clients(app_id, user_id_or_external_id, opts)

List Clients

Get all the clients for a particular user, including both linked clients and pending clients. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  ```shell /v2/apps/:appId/users/:userId/clients?page[after]=5ebee0975ac5304b664a12fa ``` 

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

api_instance = SunshineConversationsClient::ClientsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
# Be sure to add the required body parameters
opts = {
  page: SunshineConversationsClient::Page.new # Page | Contains parameters for applying cursor pagination.
}

begin
  #List Clients
  result = api_instance.list_clients(app_id, user_id_or_external_id, opts)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ClientsApi->list_clients: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 
 **page** | [**Page**](.md)| Contains parameters for applying cursor pagination. | [optional] 

### Return type

[**ClientListResponse**](ClientListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_client

> Object remove_client(app_id, user_id_or_external_id, client_id)

Remove Client

Remove a particular client and unsubscribe it from all connected conversations.

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

api_instance = SunshineConversationsClient::ClientsApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
user_id_or_external_id = '42589ad070d43be9b00ff7e5' # String | The user's id or externalId.
client_id = '5d8cff3cd55b040010928b5b' # String | The client's id.
# Be sure to add the required body parameters

begin
  #Remove Client
  result = api_instance.remove_client(app_id, user_id_or_external_id, client_id)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ClientsApi->remove_client: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| Identifies the app. | 
 **user_id_or_external_id** | **String**| The user&#39;s id or externalId. | 
 **client_id** | **String**| The client&#39;s id. | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

