# SunshineConversationsClient::Client

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the client. | [optional] 
**type** | [**ClientType**](ClientType.md) |  | [optional] 
**status** | **String** | The client status. Indicates if the client is able to receive messages or not. Can be pending, inactive, active, or blocked. | [optional] 
**integration_id** | **String** | The ID of the integration that the client was created for. Unused for clients of type sdk, as they incorporate multiple integrations. | [optional] 
**external_id** | **String** | The ID of the user on an external channel. For example, the user’s phone number for Twilio, or their page-scoped user ID for Facebook Messenger. Applies only to non-SDK clients. | [optional] 
**last_seen** | **String** | A datetime string with the format &#x60;YYYY-MM-DDThh:mm:ss.SSSZ&#x60; representing the last time the user interacted with this client. | [optional] 
**linked_at** | **String** | A timestamp signifying when the client was added to the user. Formatted as &#x60;YYYY-MM-DDThh:mm:ss.SSSZ&#x60;. | [optional] 
**display_name** | **String** | The user&#39;s display name on the channel. | [optional] 
**avatar_url** | **String** | The URL for the user&#39;s avatar on the channel. | [optional] 
**info** | [**Object**](.md) | A flat curated object with properties that vary for each client platform. All keys are optional and not guaranteed to be available. | [optional] 
**raw** | [**Object**](.md) | An object with raw properties that vary for each client platform. All keys are optional and not guaranteed to be available. | [optional] 

## Code Sample

```ruby
require 'SunshineConversationsClient'

instance = SunshineConversationsClient::Client.new(id: 5c9a34160c89726709136733,
                                 type: null,
                                 status: active,
                                 integration_id: 582dedf230e788746891281a,
                                 external_id: your-own-id,
                                 last_seen: 2020-08-20T16:13:07.462Z,
                                 linked_at: 2020-06-23T14:33:47.492Z,
                                 display_name: Steve,
                                 avatar_url: null,
                                 info: null,
                                 raw: null)
```


