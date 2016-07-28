# WWW::DialMyCalls::Object::Callservice

## Load the model package
```perl
use WWW::DialMyCalls::Object::Callservice;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | UUID | Unique identifier for this service. | [optional] 
**accessaccount_id** | UUID | Unique identifier for the access account which initiated this if available. | [optional] 
**name** | string | The name of the service. | [optional] 
**recording_id** | UUID | Unique identifier for the recording. | [optional] 
**pending_cancel** | boolean | Whether the service has been flagged to be cancelled. | [optional] 
**credit_cost** | double | The amount of credits required to schedule this service. | [optional] 
**total_recipients** | Number | The amount of recipients for this service. | [optional] 
**send_at** | string | When the service will be sent. | [optional] 
**created_at** | string | When the service was created. | [optional] 
**updated_at** | string | When the service was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


