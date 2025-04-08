=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.3.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

# Common files
require 'sunshine-conversations-client/api_client'
require 'sunshine-conversations-client/api_error'
require 'sunshine-conversations-client/version'
require 'sunshine-conversations-client/configuration'

# Models
require 'sunshine-conversations-client/models/integration'
require 'sunshine-conversations-client/models/integration_id'
require 'sunshine-conversations-client/models/integration_list_filter'
require 'sunshine-conversations-client/models/integration_list_response'
require 'sunshine-conversations-client/models/integration_response'
require 'sunshine-conversations-client/models/integration_type'
require 'sunshine-conversations-client/models/integration_update'
require 'sunshine-conversations-client/models/integration_update_base'
require 'sunshine-conversations-client/models/participant'
require 'sunshine-conversations-client/models/participant_sub_schema'
require 'sunshine-conversations-client/models/accept_control_body'
require 'sunshine-conversations-client/models/action'
require 'sunshine-conversations-client/models/action_subset'
require 'sunshine-conversations-client/models/activity'
require 'sunshine-conversations-client/models/activity_all_of'
require 'sunshine-conversations-client/models/activity_message'
require 'sunshine-conversations-client/models/activity_post'
require 'sunshine-conversations-client/models/activity_post_all_of'
require 'sunshine-conversations-client/models/activity_types'
require 'sunshine-conversations-client/models/android'
require 'sunshine-conversations-client/models/android_all_of'
require 'sunshine-conversations-client/models/android_update'
require 'sunshine-conversations-client/models/android_update_all_of'
require 'sunshine-conversations-client/models/api_key'
require 'sunshine-conversations-client/models/app'
require 'sunshine-conversations-client/models/app_create_body'
require 'sunshine-conversations-client/models/app_key'
require 'sunshine-conversations-client/models/app_key_create_body'
require 'sunshine-conversations-client/models/app_key_list_response'
require 'sunshine-conversations-client/models/app_key_response'
require 'sunshine-conversations-client/models/app_list_filter'
require 'sunshine-conversations-client/models/app_list_response'
require 'sunshine-conversations-client/models/app_response'
require 'sunshine-conversations-client/models/app_settings'
require 'sunshine-conversations-client/models/app_sub_schema'
require 'sunshine-conversations-client/models/app_update_body'
require 'sunshine-conversations-client/models/apple'
require 'sunshine-conversations-client/models/apple_all_of'
require 'sunshine-conversations-client/models/apple_message_override_payload'
require 'sunshine-conversations-client/models/apple_update'
require 'sunshine-conversations-client/models/apple_update_all_of'
require 'sunshine-conversations-client/models/attachment_delete_body'
require 'sunshine-conversations-client/models/attachment_response'
require 'sunshine-conversations-client/models/attachment_schema'
require 'sunshine-conversations-client/models/attachment_upload_body'
require 'sunshine-conversations-client/models/author'
require 'sunshine-conversations-client/models/author_webhook'
require 'sunshine-conversations-client/models/buy'
require 'sunshine-conversations-client/models/campaign'
require 'sunshine-conversations-client/models/carousel_message'
require 'sunshine-conversations-client/models/carousel_message_display_settings'
require 'sunshine-conversations-client/models/client'
require 'sunshine-conversations-client/models/client_add_event'
require 'sunshine-conversations-client/models/client_add_event_all_of'
require 'sunshine-conversations-client/models/client_add_event_all_of_payload'
require 'sunshine-conversations-client/models/client_association'
require 'sunshine-conversations-client/models/client_create'
require 'sunshine-conversations-client/models/client_list_response'
require 'sunshine-conversations-client/models/client_remove_event'
require 'sunshine-conversations-client/models/client_remove_event_all_of'
require 'sunshine-conversations-client/models/client_remove_event_all_of_payload'
require 'sunshine-conversations-client/models/client_response'
require 'sunshine-conversations-client/models/client_type'
require 'sunshine-conversations-client/models/client_update_event'
require 'sunshine-conversations-client/models/client_update_event_all_of'
require 'sunshine-conversations-client/models/client_update_event_all_of_payload'
require 'sunshine-conversations-client/models/confirmation'
require 'sunshine-conversations-client/models/content'
require 'sunshine-conversations-client/models/conversation'
require 'sunshine-conversations-client/models/conversation_all_of'
require 'sunshine-conversations-client/models/conversation_create_body'
require 'sunshine-conversations-client/models/conversation_create_event'
require 'sunshine-conversations-client/models/conversation_create_event_all_of'
require 'sunshine-conversations-client/models/conversation_create_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_join_event'
require 'sunshine-conversations-client/models/conversation_join_event_all_of'
require 'sunshine-conversations-client/models/conversation_join_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_leave_event'
require 'sunshine-conversations-client/models/conversation_leave_event_all_of'
require 'sunshine-conversations-client/models/conversation_leave_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_list_filter'
require 'sunshine-conversations-client/models/conversation_list_response'
require 'sunshine-conversations-client/models/conversation_message_delivery_channel_event'
require 'sunshine-conversations-client/models/conversation_message_delivery_channel_event_all_of'
require 'sunshine-conversations-client/models/conversation_message_delivery_failure_event'
require 'sunshine-conversations-client/models/conversation_message_delivery_failure_event_all_of'
require 'sunshine-conversations-client/models/conversation_message_delivery_payload'
require 'sunshine-conversations-client/models/conversation_message_delivery_payload_destination'
require 'sunshine-conversations-client/models/conversation_message_delivery_payload_external_messages'
require 'sunshine-conversations-client/models/conversation_message_delivery_payload_message'
require 'sunshine-conversations-client/models/conversation_message_delivery_user_event'
require 'sunshine-conversations-client/models/conversation_message_event'
require 'sunshine-conversations-client/models/conversation_message_event_all_of'
require 'sunshine-conversations-client/models/conversation_message_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_postback_event'
require 'sunshine-conversations-client/models/conversation_postback_event_all_of'
require 'sunshine-conversations-client/models/conversation_postback_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_read_event'
require 'sunshine-conversations-client/models/conversation_read_event_all_of'
require 'sunshine-conversations-client/models/conversation_read_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_referral_event'
require 'sunshine-conversations-client/models/conversation_referral_event_all_of'
require 'sunshine-conversations-client/models/conversation_referral_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_remove_event'
require 'sunshine-conversations-client/models/conversation_remove_event_all_of'
require 'sunshine-conversations-client/models/conversation_remove_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_response'
require 'sunshine-conversations-client/models/conversation_truncated'
require 'sunshine-conversations-client/models/conversation_type'
require 'sunshine-conversations-client/models/conversation_typing_event'
require 'sunshine-conversations-client/models/conversation_typing_event_all_of'
require 'sunshine-conversations-client/models/conversation_typing_event_all_of_payload'
require 'sunshine-conversations-client/models/conversation_update_body'
require 'sunshine-conversations-client/models/custom'
require 'sunshine-conversations-client/models/custom_all_of'
require 'sunshine-conversations-client/models/custom_update'
require 'sunshine-conversations-client/models/default_responder'
require 'sunshine-conversations-client/models/default_responder_default_responder'
require 'sunshine-conversations-client/models/default_responder_id'
require 'sunshine-conversations-client/models/destination'
require 'sunshine-conversations-client/models/device'
require 'sunshine-conversations-client/models/device_list_response'
require 'sunshine-conversations-client/models/device_response'
require 'sunshine-conversations-client/models/download_message_ref_body'
require 'sunshine-conversations-client/models/download_message_ref_body_all_of'
require 'sunshine-conversations-client/models/download_message_ref_body_all_of_apple'
require 'sunshine-conversations-client/models/download_message_ref_body_all_of_apple_interactive_data_ref'
require 'sunshine-conversations-client/models/error'
require 'sunshine-conversations-client/models/error_response'
require 'sunshine-conversations-client/models/event_sub_schema'
require 'sunshine-conversations-client/models/extra_channel_options'
require 'sunshine-conversations-client/models/extra_channel_options_messenger'
require 'sunshine-conversations-client/models/field'
require 'sunshine-conversations-client/models/file_message'
require 'sunshine-conversations-client/models/form_message'
require 'sunshine-conversations-client/models/form_message_field'
require 'sunshine-conversations-client/models/form_message_field_all_of'
require 'sunshine-conversations-client/models/form_response_message'
require 'sunshine-conversations-client/models/form_response_message_field'
require 'sunshine-conversations-client/models/form_response_message_field_all_of'
require 'sunshine-conversations-client/models/identity'
require 'sunshine-conversations-client/models/image_message'
require 'sunshine-conversations-client/models/inline_object'
require 'sunshine-conversations-client/models/instagram'
require 'sunshine-conversations-client/models/instagram_all_of'
require 'sunshine-conversations-client/models/instagram_update'
require 'sunshine-conversations-client/models/instagram_update_all_of'
require 'sunshine-conversations-client/models/integration'
require 'sunshine-conversations-client/models/integration_api_key'
require 'sunshine-conversations-client/models/integration_api_key_list_response'
require 'sunshine-conversations-client/models/integration_api_key_response'
require 'sunshine-conversations-client/models/integration_id'
require 'sunshine-conversations-client/models/integration_list_filter'
require 'sunshine-conversations-client/models/integration_list_response'
require 'sunshine-conversations-client/models/integration_response'
require 'sunshine-conversations-client/models/integration_type'
require 'sunshine-conversations-client/models/integration_update'
require 'sunshine-conversations-client/models/integration_update_base'
require 'sunshine-conversations-client/models/ios'
require 'sunshine-conversations-client/models/ios_all_of'
require 'sunshine-conversations-client/models/ios_update'
require 'sunshine-conversations-client/models/ios_update_all_of'
require 'sunshine-conversations-client/models/item'
require 'sunshine-conversations-client/models/line'
require 'sunshine-conversations-client/models/line_all_of'
require 'sunshine-conversations-client/models/line_update'
require 'sunshine-conversations-client/models/link'
require 'sunshine-conversations-client/models/links'
require 'sunshine-conversations-client/models/list_message'
require 'sunshine-conversations-client/models/location_message'
require 'sunshine-conversations-client/models/location_message_coordinates'
require 'sunshine-conversations-client/models/location_message_location'
require 'sunshine-conversations-client/models/location_request'
require 'sunshine-conversations-client/models/mailgun'
require 'sunshine-conversations-client/models/mailgun_all_of'
require 'sunshine-conversations-client/models/mailgun_update'
require 'sunshine-conversations-client/models/mailgun_update_all_of'
require 'sunshine-conversations-client/models/match_criteria'
require 'sunshine-conversations-client/models/match_criteria_base'
require 'sunshine-conversations-client/models/match_criteria_mailgun'
require 'sunshine-conversations-client/models/match_criteria_mailgun_all_of'
require 'sunshine-conversations-client/models/match_criteria_messagebird'
require 'sunshine-conversations-client/models/match_criteria_messagebird_all_of'
require 'sunshine-conversations-client/models/match_criteria_twilio'
require 'sunshine-conversations-client/models/match_criteria_twilio_all_of'
require 'sunshine-conversations-client/models/match_criteria_whatsapp'
require 'sunshine-conversations-client/models/match_criteria_whatsapp_all_of'
require 'sunshine-conversations-client/models/message'
require 'sunshine-conversations-client/models/message_bird_update'
require 'sunshine-conversations-client/models/message_list_response'
require 'sunshine-conversations-client/models/message_override'
require 'sunshine-conversations-client/models/message_override_apple'
require 'sunshine-conversations-client/models/message_override_line'
require 'sunshine-conversations-client/models/message_override_messenger'
require 'sunshine-conversations-client/models/message_override_payload'
require 'sunshine-conversations-client/models/message_override_whatsapp'
require 'sunshine-conversations-client/models/message_post'
require 'sunshine-conversations-client/models/message_post_response'
require 'sunshine-conversations-client/models/message_webhook'
require 'sunshine-conversations-client/models/messagebird'
require 'sunshine-conversations-client/models/messagebird_all_of'
require 'sunshine-conversations-client/models/messenger'
require 'sunshine-conversations-client/models/messenger_all_of'
require 'sunshine-conversations-client/models/messenger_update'
require 'sunshine-conversations-client/models/meta'
require 'sunshine-conversations-client/models/offer_control_body'
require 'sunshine-conversations-client/models/page'
require 'sunshine-conversations-client/models/participant'
require 'sunshine-conversations-client/models/participant_join_body'
require 'sunshine-conversations-client/models/participant_leave_body'
require 'sunshine-conversations-client/models/participant_leave_body_participant_id'
require 'sunshine-conversations-client/models/participant_leave_body_user_external_id'
require 'sunshine-conversations-client/models/participant_leave_body_user_id'
require 'sunshine-conversations-client/models/participant_list_response'
require 'sunshine-conversations-client/models/participant_response'
require 'sunshine-conversations-client/models/participant_sub_schema'
require 'sunshine-conversations-client/models/participant_with_user_external_id'
require 'sunshine-conversations-client/models/participant_with_user_id'
require 'sunshine-conversations-client/models/pass_control_body'
require 'sunshine-conversations-client/models/postback'
require 'sunshine-conversations-client/models/postback_webhook'
require 'sunshine-conversations-client/models/prechat_capture'
require 'sunshine-conversations-client/models/profile'
require 'sunshine-conversations-client/models/quoted_message'
require 'sunshine-conversations-client/models/quoted_message_external_message_id'
require 'sunshine-conversations-client/models/quoted_message_message'
require 'sunshine-conversations-client/models/referral'
require 'sunshine-conversations-client/models/referral_details'
require 'sunshine-conversations-client/models/reply'
require 'sunshine-conversations-client/models/source'
require 'sunshine-conversations-client/models/source_webhook'
require 'sunshine-conversations-client/models/source_with_campaign_webhook'
require 'sunshine-conversations-client/models/source_with_campaign_webhook_all_of'
require 'sunshine-conversations-client/models/status'
require 'sunshine-conversations-client/models/switchboard'
require 'sunshine-conversations-client/models/switchboard_accept_control'
require 'sunshine-conversations-client/models/switchboard_accept_control_all_of'
require 'sunshine-conversations-client/models/switchboard_accept_control_all_of_payload'
require 'sunshine-conversations-client/models/switchboard_accept_control_failure'
require 'sunshine-conversations-client/models/switchboard_accept_control_failure_all_of'
require 'sunshine-conversations-client/models/switchboard_accept_control_failure_all_of_payload'
require 'sunshine-conversations-client/models/switchboard_integration'
require 'sunshine-conversations-client/models/switchboard_integration_create_body'
require 'sunshine-conversations-client/models/switchboard_integration_list_response'
require 'sunshine-conversations-client/models/switchboard_integration_response'
require 'sunshine-conversations-client/models/switchboard_integration_update_body'
require 'sunshine-conversations-client/models/switchboard_integration_webhook'
require 'sunshine-conversations-client/models/switchboard_list_response'
require 'sunshine-conversations-client/models/switchboard_offer_control'
require 'sunshine-conversations-client/models/switchboard_offer_control_all_of'
require 'sunshine-conversations-client/models/switchboard_offer_control_all_of_payload'
require 'sunshine-conversations-client/models/switchboard_offer_control_failure'
require 'sunshine-conversations-client/models/switchboard_pass_control'
require 'sunshine-conversations-client/models/switchboard_pass_control_all_of'
require 'sunshine-conversations-client/models/switchboard_pass_control_all_of_payload'
require 'sunshine-conversations-client/models/switchboard_pass_control_failure'
require 'sunshine-conversations-client/models/switchboard_response'
require 'sunshine-conversations-client/models/switchboard_update_body'
require 'sunshine-conversations-client/models/target'
require 'sunshine-conversations-client/models/telegram'
require 'sunshine-conversations-client/models/telegram_all_of'
require 'sunshine-conversations-client/models/telegram_update'
require 'sunshine-conversations-client/models/template_message'
require 'sunshine-conversations-client/models/text_message'
require 'sunshine-conversations-client/models/ticket_closed'
require 'sunshine-conversations-client/models/transfer_to_email'
require 'sunshine-conversations-client/models/twilio'
require 'sunshine-conversations-client/models/twilio_all_of'
require 'sunshine-conversations-client/models/twilio_update'
require 'sunshine-conversations-client/models/twitter'
require 'sunshine-conversations-client/models/twitter_all_of'
require 'sunshine-conversations-client/models/twitter_update'
require 'sunshine-conversations-client/models/unity'
require 'sunshine-conversations-client/models/unity_all_of'
require 'sunshine-conversations-client/models/unity_update'
require 'sunshine-conversations-client/models/unity_update_all_of'
require 'sunshine-conversations-client/models/user'
require 'sunshine-conversations-client/models/user_all_of'
require 'sunshine-conversations-client/models/user_create_body'
require 'sunshine-conversations-client/models/user_merge_event'
require 'sunshine-conversations-client/models/user_merge_event_all_of'
require 'sunshine-conversations-client/models/user_merge_event_all_of_payload'
require 'sunshine-conversations-client/models/user_merge_event_all_of_payload_merged_clients'
require 'sunshine-conversations-client/models/user_merge_event_all_of_payload_merged_conversations'
require 'sunshine-conversations-client/models/user_merge_event_all_of_payload_merged_users'
require 'sunshine-conversations-client/models/user_remove_event'
require 'sunshine-conversations-client/models/user_remove_event_all_of'
require 'sunshine-conversations-client/models/user_remove_event_all_of_payload'
require 'sunshine-conversations-client/models/user_response'
require 'sunshine-conversations-client/models/user_truncated'
require 'sunshine-conversations-client/models/user_update_body'
require 'sunshine-conversations-client/models/user_update_event'
require 'sunshine-conversations-client/models/user_update_event_all_of'
require 'sunshine-conversations-client/models/user_update_event_all_of_payload'
require 'sunshine-conversations-client/models/viber'
require 'sunshine-conversations-client/models/viber_all_of'
require 'sunshine-conversations-client/models/viber_update'
require 'sunshine-conversations-client/models/web'
require 'sunshine-conversations-client/models/web_all_of'
require 'sunshine-conversations-client/models/web_update'
require 'sunshine-conversations-client/models/web_update_all_of'
require 'sunshine-conversations-client/models/webhook'
require 'sunshine-conversations-client/models/webhook_body'
require 'sunshine-conversations-client/models/webhook_create_body'
require 'sunshine-conversations-client/models/webhook_list_response'
require 'sunshine-conversations-client/models/webhook_response'
require 'sunshine-conversations-client/models/webhook_sub_schema'
require 'sunshine-conversations-client/models/webview'
require 'sunshine-conversations-client/models/whats_app_update'
require 'sunshine-conversations-client/models/whats_app_update_all_of'
require 'sunshine-conversations-client/models/whatsapp'
require 'sunshine-conversations-client/models/whatsapp_all_of'

# APIs
require 'sunshine-conversations-client/api/activities_api'
require 'sunshine-conversations-client/api/app_keys_api'
require 'sunshine-conversations-client/api/apps_api'
require 'sunshine-conversations-client/api/attachments_api'
require 'sunshine-conversations-client/api/clients_api'
require 'sunshine-conversations-client/api/conversations_api'
require 'sunshine-conversations-client/api/custom_integration_api_keys_api'
require 'sunshine-conversations-client/api/devices_api'
require 'sunshine-conversations-client/api/integrations_api'
require 'sunshine-conversations-client/api/messages_api'
require 'sunshine-conversations-client/api/o_auth_endpoints_api'
require 'sunshine-conversations-client/api/participants_api'
require 'sunshine-conversations-client/api/switchboard_actions_api'
require 'sunshine-conversations-client/api/switchboard_integrations_api'
require 'sunshine-conversations-client/api/switchboards_api'
require 'sunshine-conversations-client/api/users_api'
require 'sunshine-conversations-client/api/webhooks_api'

module SunshineConversationsClient
  class << self
    # Customize default settings for the SDK using block.
    #   SunshineConversationsClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end