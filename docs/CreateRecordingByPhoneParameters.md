# WWW::DialMyCalls::Object::CreateRecordingByPhoneParameters

## Load the model package
```perl
use WWW::DialMyCalls::Object::CreateRecordingByPhoneParameters;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | string | (Required)  The name of the recording. | [optional] 
**callerid_id** | UUID | The caller id that the create recording message should be sent from. | [optional] 
**whitelabel** | boolean | Add or remove the DialMyCalls intro message. | [optional] 
**phone** | string | (Required)  The recipient&#39;s phone number who will record the message. | [optional] 
**extension** | string | The recipient&#39;s phone extension up to 10 numeric digits. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


