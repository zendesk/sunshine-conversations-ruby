=begin
#Sunshine Conversations API

The version of the OpenAPI document: 15.5.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Attachment
    # Remove an attachment uploaded to Sunshine Conversations through the Upload attachment API. See [Attachments for Messages](#section/Attachments-for-Messages) to have attachments automatically deleted when deleting messages, conversations or users. <aside class=\"notice\">Note that deleted attachments can remain available on our CDN’s cache up to 15 minutes after the delete call.</aside> 
    # @param app_id [String] Identifies the app.
    # @param attachment_delete_body [AttachmentDeleteBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_attachment(app_id, attachment_delete_body, opts = {})
      data, _status_code, _headers = delete_attachment_with_http_info(app_id, attachment_delete_body, opts)
      data
    end

    # Delete Attachment
    # Remove an attachment uploaded to Sunshine Conversations through the Upload attachment API. See [Attachments for Messages](#section/Attachments-for-Messages) to have attachments automatically deleted when deleting messages, conversations or users. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that deleted attachments can remain available on our CDN’s cache up to 15 minutes after the delete call.&lt;/aside&gt; 
    # @param app_id [String] Identifies the app.
    # @param attachment_delete_body [AttachmentDeleteBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_attachment_with_http_info(app_id, attachment_delete_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.delete_attachment ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.delete_attachment"
      end
      # verify the required parameter 'attachment_delete_body' is set
      if @api_client.config.client_side_validation && attachment_delete_body.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_delete_body' when calling AttachmentsApi.delete_attachment"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/attachments/remove'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(attachment_delete_body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#delete_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload Attachment
    # Upload an attachment to Sunshine Conversations to use in future messages. Files are uploaded using the multipart/form-data content type. Use the returned mediaUrl to send a file, image or carousel message. <aside class=\"notice\">Note that Sunshine Conversations limits the size and type of file you can upload to the platform. See the <a href=\"https://docs.smooch.io/guide/validating-files\">file validation</a> guide for more details.</aside> 
    # @param app_id [String] Identifies the app.
    # @param access [String] The access level for the attachment. Currently the only available access level is public. Private is not supported.
    # @param source [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :_for Specifies the intended container for the attachment, to enable automatic attachment deletion (on deletion of associated message, conversation or user). For now, only message is supported. See [Attachments for Messages](#section/Attachments-for-Messages) for details.
    # @option opts [String] :conversation_id Links the attachment getting uploaded to the conversation ID.
    # @return [AttachmentResponse]
    def upload_attachment(app_id, access, source, opts = {})
      data, _status_code, _headers = upload_attachment_with_http_info(app_id, access, source, opts)
      data
    end

    # Upload Attachment
    # Upload an attachment to Sunshine Conversations to use in future messages. Files are uploaded using the multipart/form-data content type. Use the returned mediaUrl to send a file, image or carousel message. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that Sunshine Conversations limits the size and type of file you can upload to the platform. See the &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/validating-files\&quot;&gt;file validation&lt;/a&gt; guide for more details.&lt;/aside&gt; 
    # @param app_id [String] Identifies the app.
    # @param access [String] The access level for the attachment. Currently the only available access level is public. Private is not supported.
    # @param source [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :_for Specifies the intended container for the attachment, to enable automatic attachment deletion (on deletion of associated message, conversation or user). For now, only message is supported. See [Attachments for Messages](#section/Attachments-for-Messages) for details.
    # @option opts [String] :conversation_id Links the attachment getting uploaded to the conversation ID.
    # @return [Array<(AttachmentResponse, Integer, Hash)>] AttachmentResponse data, response status code and response headers
    def upload_attachment_with_http_info(app_id, access, source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.upload_attachment ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'access' is set
      if @api_client.config.client_side_validation && access.nil?
        fail ArgumentError, "Missing the required parameter 'access' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AttachmentsApi.upload_attachment"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/attachments'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access'] = access
      query_params[:'for'] = opts[:'_for'] if !opts[:'_for'].nil?
      query_params[:'conversationId'] = opts[:'conversation_id'] if !opts[:'conversation_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['source'] = source

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AttachmentResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
