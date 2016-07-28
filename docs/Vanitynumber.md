# WWW::DialMyCalls::Object::Vanitynumber

## Load the model package
```perl
use WWW::DialMyCalls::Object::Vanitynumber;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | UUID | Unique identifier for this group. | [optional] 
**phone** | string | The phone number. | [optional] 
**status** | string | The status of the vanity number. Options: active, onhold, billingdecline, pendingdelete | [optional] 
**minutes_used** | double | The amount of minutes used since last billing. | [optional] 
**minutes_allowed** | double | The amount of minutes included with the vanity number before billed additionally. | [optional] 
**voicemails_new** | int | The amount of voicemails that have not been downloaded. | [optional] 
**voicemails_old** | int | The amount of voicemails that have been downloaded. | [optional] 
**created_at** | string | When the keyword was created. | [optional] 
**updated_at** | string | When the keyword was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


