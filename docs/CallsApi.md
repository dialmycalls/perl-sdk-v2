# WWW::DialMyCalls::CallsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::CallsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_call_by_id**](CallsApi.md#cancel_call_by_id) | **DELETE** /service/call/{CallId} | Cancel Call
[**create_call**](CallsApi.md#create_call) | **POST** /service/call | Create Call
[**get_call_by_id**](CallsApi.md#get_call_by_id) | **GET** /service/call/{CallId} | Get Call
[**get_call_recipients_by_call_id**](CallsApi.md#get_call_recipients_by_call_id) | **GET** /service/call/{CallId}/recipients | Get Call Recipients
[**get_calls**](CallsApi.md#get_calls) | **GET** /service/calls | List Calls


# **cancel_call_by_id**
> object cancel_call_by_id(call_id => $call_id)

Cancel Call

Cancel an outgoing call. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/service/call/$CALL_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallsApi->new();
my $call_id = 'call_id_example'; # string | CallId

eval { 
    my $result = $api_instance->cancel_call_by_id(call_id => $call_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallsApi->cancel_call_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **string**| CallId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_call**
> object create_call(create_call_parameters => $create_call_parameters)

Create Call

Create an outgoing call broadcast. <br><br> Returns a call service object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test\\\", \\\"callerid_id\\\": \\\"8bc6748e-d8a0-11e4-8b2d-00163e603cea\\\", \\\"recording_id\\\": \\\"079ff28a-1b75-11e5-88eb-00163e603cea\\\", \\\"send_immediately\\\": true, \\\"use_amd\\\": true, \\\"contacts\\\": [{\\\"phone\\\":\\\"1116551235\\\"},{\\\"phone\\\":\\\"1116551234\\\"}]}\" https://$API_KEY@api.dialmycalls.com/2.0/service/call ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallsApi->new();
my $create_call_parameters = WWW::DialMyCalls::Object::CreateCallParameters->new(); # CreateCallParameters | Request body

eval { 
    my $result = $api_instance->create_call(create_call_parameters => $create_call_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallsApi->create_call: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_call_parameters** | [**CreateCallParameters**](CreateCallParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_call_by_id**
> object get_call_by_id(call_id => $call_id)

Get Call

Retrieve a call. <br><br> Returns a call service object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/call/$CALL_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallsApi->new();
my $call_id = 'call_id_example'; # string | CallId

eval { 
    my $result = $api_instance->get_call_by_id(call_id => $call_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallsApi->get_call_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **string**| CallId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_call_recipients_by_call_id**
> object get_call_recipients_by_call_id(call_id => $call_id, range => $range)

Get Call Recipients

Retrieve a list of a call's recipients. <br><br> Returns a list of call recipient objects if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/call/$CALL_ID/recipients ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallsApi->new();
my $call_id = 'call_id_example'; # string | CallId
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of recipients requested

eval { 
    my $result = $api_instance->get_call_recipients_by_call_id(call_id => $call_id, range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallsApi->get_call_recipients_by_call_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **string**| CallId | 
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of recipients requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_calls**
> object get_calls(range => $range)

List Calls

Retrieve a list of calls. <br><br> Returns a list of call service objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/calls ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of calls requested

eval { 
    my $result = $api_instance->get_calls(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallsApi->get_calls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of calls requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

