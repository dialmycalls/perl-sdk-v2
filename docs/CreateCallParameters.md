# WWW::DialMyCalls::Object::CreateCallParameters

## Load the model package
```perl
use WWW::DialMyCalls::Object::CreateCallParameters;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | string | (Required)  Name the broadcast. | [optional] 
**callerid_id** | UUID | (Required)  The caller id that the message should be sent from. | [optional] 
**recording_id** | UUID | (Required)  The recording id of the message that should be played. | [optional] 
**machine_recording_id** | UUID | The recording id of the message that should be played on answering machines.  If not supplied the recording_id will be used.  use_amd must be true in order for this feature to work. | [optional] 
**send_at** | string | When the broadcast should be sent. (Ex: 2016-07-25T12:00:00+0000) | [optional] 
**send_immediately** | boolean | Should the broadcast go out immediately? | [optional] 
**use_amd** | boolean | Using answering machine detection? | [optional] 
**send_email** | boolean | Also send an email to the contacts? | [optional] 
**accessaccount_id** | UUID | Schedule this broadcast as an access account. | [optional] 
**contacts** | ARRAY[ContactAttributes] | (Required)  List of contact information that should be sent the broadcast. | [optional] 
**add_ons** | ARRAY[PushToListenAgain] | A list of feature add-ons for the calls. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


