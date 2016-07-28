# WWW::DialMyCalls::Object::PushToTalk

## Load the model package
```perl
use WWW::DialMyCalls::Object::PushToTalk;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | string | The add-on type. Option: ptt | [optional] 
**callerid_id** | UUID | Phone number to connect the caller to. | [optional] 
**ringtone** | string | The ringtone to play to the user when connecting. Options: elevator_music, caribbean_music, classical_music, digital_ringing, old_phone_ringing, goofy_music | [optional] 
**cpm** | int | Calls per minute throttling. | [optional] 
**add_message** | object | Add a generic add-on message. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


