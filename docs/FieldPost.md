# SmoochApi::FieldPost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The field type. See [**FieldTypeEnum**](Enums.md#FieldTypeEnum) for available values. | 
**name** | **String** | The name of the field. Each field name must be unique per form. | 
**label** | **String** | The label to be displayed with the field. | 
**placeholder** | **String** | The placeholder text of the field that will be rendered. Only for form messages  | [optional] 
**minSize** | **Integer** | The minimum possible length of the response. Defaults to 1 if not specified. Only for text fields in form messages.  | [optional] 
**maxSize** | **Integer** | The maximum possible length of the response. Defaults to 128 if not specified. Only for text fields in form messages.  | [optional] 
**options** | [**Array&lt;Option&gt;**](Option.md) | The field options that can be selected. The array is limited to 20 options. Only for select fields in form messages.  | [optional] 


