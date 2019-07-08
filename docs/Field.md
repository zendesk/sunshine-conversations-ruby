# SmoochApi::Field

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The field ID, generated automatically. | [optional] 
**type** | **String** | The field type. See [**FieldTypeEnum**](Enums.md#FieldTypeEnum) for available values. | 
**name** | **String** | The name of the field. Each field name must be unique per form. | 
**label** | **String** | The label to be displayed with the field. | 
**placeholder** | **String** | The placeholder text of the field that will be rendered. Only for form messages  | [optional] 
**minSize** | **Integer** | The minimum possible length of the response. Defaults to 1 if not specified. Only for text fields in form messages.  | [optional] 
**maxSize** | **Integer** | The maximum possible length of the response. Defaults to 128 if not specified. Only for text fields in form messages.  | [optional] 
**options** | [**Array&lt;Option&gt;**](Option.md) | The field options that can be selected. The array is limited to 20 options. Only for select fields in form messages.  | [optional] 
**selectSize** | **Integer** | The select size, generated automatically. Only for select fields in form messages.  | [optional] 
**text** | **String** | The text response to a text field. Required for text fields in form response messages.  | [optional] 
**email** | **String** | The email response to an email field. Required for email fields in form response messages.  | [optional] 
**select** | [**Array&lt;Select&gt;**](Select.md) | The options selected as a response to a select field. Required for select fields in form response messages.  | [optional] 


