# WWW::DialMyCalls::RecordingsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::RecordingsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_recording**](RecordingsApi.md#create_recording) | **POST** /recording/tts | Create Recording (Text-to-Speech)
[**create_recording_by_phone**](RecordingsApi.md#create_recording_by_phone) | **POST** /recording/phone | Create Recording (Phone)
[**create_recording_by_url**](RecordingsApi.md#create_recording_by_url) | **POST** /recording/url | Create Recording (URL)
[**delete_recording_by_id**](RecordingsApi.md#delete_recording_by_id) | **DELETE** /recording/{RecordingId} | Delete Recording
[**get_recording_by_id**](RecordingsApi.md#get_recording_by_id) | **GET** /recording/{RecordingId} | Get Recording
[**get_recordings**](RecordingsApi.md#get_recordings) | **GET** /recordings | List Recordings
[**update_recording_by_id**](RecordingsApi.md#update_recording_by_id) | **PUT** /recording/{RecordingId} | Update Recording


# **create_recording**
> object create_recording(create_recording_parameters => $create_recording_parameters)

Create Recording (Text-to-Speech)

Create a new recording using text-to-speech. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"gender\\\": \\\"M\\\", \\\"language\\\": \\\"en\\\", \\\"text\\\": \\\"This is just a test.\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/tts ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $create_recording_parameters = WWW::DialMyCalls::Object::CreateRecordingParameters->new(); # CreateRecordingParameters | Request body

eval { 
    my $result = $api_instance->create_recording(create_recording_parameters => $create_recording_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->create_recording: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_recording_parameters** | [**CreateRecordingParameters**](CreateRecordingParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_recording_by_phone**
> object create_recording_by_phone(create_recording_by_phone_parameters => $create_recording_by_phone_parameters)

Create Recording (Phone)

Create a new recording by phone. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"phone\\\": \\\"5551234567\\\", \\\"callerid_id\\\": \\\"$CALLERID_ID\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/phone ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $create_recording_by_phone_parameters = WWW::DialMyCalls::Object::CreateRecordingByPhoneParameters->new(); # CreateRecordingByPhoneParameters | Request body

eval { 
    my $result = $api_instance->create_recording_by_phone(create_recording_by_phone_parameters => $create_recording_by_phone_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->create_recording_by_phone: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_recording_by_phone_parameters** | [**CreateRecordingByPhoneParameters**](CreateRecordingByPhoneParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_recording_by_url**
> object create_recording_by_url(create_recording_by_url_parameters => $create_recording_by_url_parameters)

Create Recording (URL)

Create a new recording from a URL. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"url\\\": \\\"https://ia700200.us.archive.org/1/items/testmp3testfile/mpthreetest.mp3\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/url ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $create_recording_by_url_parameters = WWW::DialMyCalls::Object::CreateRecordingByUrlParameters->new(); # CreateRecordingByUrlParameters | Request body

eval { 
    my $result = $api_instance->create_recording_by_url(create_recording_by_url_parameters => $create_recording_by_url_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->create_recording_by_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_recording_by_url_parameters** | [**CreateRecordingByUrlParameters**](CreateRecordingByUrlParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_recording_by_id**
> object delete_recording_by_id(recording_id => $recording_id)

Delete Recording

Delete a recording. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $recording_id = 'recording_id_example'; # string | RecordingId

eval { 
    my $result = $api_instance->delete_recording_by_id(recording_id => $recording_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->delete_recording_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recording_id** | **string**| RecordingId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recording_by_id**
> object get_recording_by_id(recording_id => $recording_id)

Get Recording

Retrieve a recording. <br><br> Returns a recording object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $recording_id = 'recording_id_example'; # string | RecordingId

eval { 
    my $result = $api_instance->get_recording_by_id(recording_id => $recording_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->get_recording_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recording_id** | **string**| RecordingId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recordings**
> object get_recordings(range => $range)

List Recordings

Retrieve a list of recordings. <br><br> Returns a list of recording objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/recordings ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of recordings requested

eval { 
    my $result = $api_instance->get_recordings(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->get_recordings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of recordings requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_recording_by_id**
> object update_recording_by_id(update_recording_by_id_parameters => $update_recording_by_id_parameters, recording_id => $recording_id)

Update Recording

Update an existing recording. <br><br> Returns a recording object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"Test Recording Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::RecordingsApi->new();
my $update_recording_by_id_parameters = WWW::DialMyCalls::Object::UpdateRecordingByIdParameters->new(); # UpdateRecordingByIdParameters | Request body
my $recording_id = 'recording_id_example'; # string | RecordingId

eval { 
    my $result = $api_instance->update_recording_by_id(update_recording_by_id_parameters => $update_recording_by_id_parameters, recording_id => $recording_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordingsApi->update_recording_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_recording_by_id_parameters** | [**UpdateRecordingByIdParameters**](UpdateRecordingByIdParameters.md)| Request body | 
 **recording_id** | **string**| RecordingId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

