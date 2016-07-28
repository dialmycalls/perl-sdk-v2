# WWW::DialMyCalls::Object::CreateTextParameters

## Load the model package
```perl
use WWW::DialMyCalls::Object::CreateTextParameters;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | string | (Required)  Name the broadcast. | [optional] 
**keyword_id** | UUID | (Required)  The keyword id that should be associated with this broadcast. | [optional] 
**messages** | ARRAY[string] | (Required)  List of messages to send (up to 10). | [optional] 
**send_at** | string | When the broadcast should be sent. (Ex: 2016-07-25T12:00:00+0000) | [optional] 
**send_immediately** | boolean | Should the broadcast go out immediately? | [optional] 
**send_email** | boolean | Also send an email to the contacts? | [optional] 
**accessaccount_id** | UUID | Schedule this broadcast as an access account. | [optional] 
**shortcode_id** | UUID | The shortcode id that the broadcast will be sent from. | [optional] 
**concatenate_sms** | boolean | Combine all SMS messages into 1 message on the end users device. | [optional] 
**contacts** | ARRAY[ContactAttributes] | (Required)  List of contact information that should be sent the broadcast. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


