# WWW::DialMyCalls::CallerIdsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::CallerIdsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_caller_id**](CallerIdsApi.md#create_caller_id) | **POST** /callerid | Add Caller ID
[**create_unverified_caller_id**](CallerIdsApi.md#create_unverified_caller_id) | **POST** /verify/callerid | Add Caller ID (Unverified)
[**delete_caller_id_by_id**](CallerIdsApi.md#delete_caller_id_by_id) | **DELETE** /callerid/{CalleridId} | Delete Caller ID
[**get_caller_id_by_id**](CallerIdsApi.md#get_caller_id_by_id) | **GET** /callerid/{CalleridId} | Get Caller ID
[**get_caller_ids**](CallerIdsApi.md#get_caller_ids) | **GET** /callerids | List Caller IDs
[**update_caller_id_by_id**](CallerIdsApi.md#update_caller_id_by_id) | **PUT** /callerid/{CalleridId} | Update Caller ID
[**verify_caller_id_by_id**](CallerIdsApi.md#verify_caller_id_by_id) | **PUT** /verify/callerid/{CalleridId} | Verify Caller ID


# **create_caller_id**
> object create_caller_id(create_caller_id_parameters => $create_caller_id_parameters)

Add Caller ID

Add a caller ID. <br><br> Returns a caller ID object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\", \\\"name\\\": \\\"New Number\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/callerid ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $create_caller_id_parameters = WWW::DialMyCalls::Object::CreateCallerIdParameters->new(); # CreateCallerIdParameters | Request body

eval { 
    my $result = $api_instance->create_caller_id(create_caller_id_parameters => $create_caller_id_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->create_caller_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_caller_id_parameters** | [**CreateCallerIdParameters**](CreateCallerIdParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_unverified_caller_id**
> object create_unverified_caller_id(create_unverified_caller_id_parameters => $create_unverified_caller_id_parameters)

Add Caller ID (Unverified)

Initiate adding a new caller ID when you need to go through the verification process. You will receive a phone call at the phone number provided and will need to make a subsequent API call with the PIN code that you are provided. <br><br> Returns a caller ID object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\", \\\"name\\\": \\\"New Number\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/verify/callerid ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $create_unverified_caller_id_parameters = WWW::DialMyCalls::Object::CreateUnverifiedCallerIdParameters->new(); # CreateUnverifiedCallerIdParameters | Request body

eval { 
    my $result = $api_instance->create_unverified_caller_id(create_unverified_caller_id_parameters => $create_unverified_caller_id_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->create_unverified_caller_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_unverified_caller_id_parameters** | [**CreateUnverifiedCallerIdParameters**](CreateUnverifiedCallerIdParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_caller_id_by_id**
> object delete_caller_id_by_id(callerid_id => $callerid_id)

Delete Caller ID

Delete a caller ID. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/callerid/$CALLERID_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $callerid_id = 'callerid_id_example'; # string | CalleridId

eval { 
    my $result = $api_instance->delete_caller_id_by_id(callerid_id => $callerid_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->delete_caller_id_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callerid_id** | **string**| CalleridId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_caller_id_by_id**
> object get_caller_id_by_id(callerid_id => $callerid_id)

Get Caller ID

Retrieve a caller ID. <br><br> Returns a caller ID object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/callerid/$CALLERID_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $callerid_id = 'callerid_id_example'; # string | CalleridId

eval { 
    my $result = $api_instance->get_caller_id_by_id(callerid_id => $callerid_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->get_caller_id_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callerid_id** | **string**| CalleridId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_caller_ids**
> object get_caller_ids(range => $range)

List Caller IDs

Retrieve a list of caller IDs. <br><br> Returns a list of caller ID objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/callerids ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of callerids requested

eval { 
    my $result = $api_instance->get_caller_ids(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->get_caller_ids: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of callerids requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_caller_id_by_id**
> object update_caller_id_by_id(update_caller_id_by_id_parameters => $update_caller_id_by_id_parameters, callerid_id => $callerid_id)

Update Caller ID

Update an existing caller ID. <br><br> Returns a caller ID object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"New Number Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/callerid/$CALLERID_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $update_caller_id_by_id_parameters = WWW::DialMyCalls::Object::UpdateCallerIdByIdParameters->new(); # UpdateCallerIdByIdParameters | Request body
my $callerid_id = 'callerid_id_example'; # string | CalleridId

eval { 
    my $result = $api_instance->update_caller_id_by_id(update_caller_id_by_id_parameters => $update_caller_id_by_id_parameters, callerid_id => $callerid_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->update_caller_id_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_caller_id_by_id_parameters** | [**UpdateCallerIdByIdParameters**](UpdateCallerIdByIdParameters.md)| Request body | 
 **callerid_id** | **string**| CalleridId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_caller_id_by_id**
> object verify_caller_id_by_id(verify_caller_id_by_id_parameters => $verify_caller_id_by_id_parameters, callerid_id => $callerid_id)

Verify Caller ID

Verify a new caller ID. <br><br> Returns a caller ID object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\", \\\"name\\\": \\\"New Number\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/verify/callerid/$CALLERID_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::CallerIdsApi->new();
my $verify_caller_id_by_id_parameters = WWW::DialMyCalls::Object::VerifyCallerIdByIdParameters->new(); # VerifyCallerIdByIdParameters | Request body
my $callerid_id = 'callerid_id_example'; # string | CalleridId

eval { 
    my $result = $api_instance->verify_caller_id_by_id(verify_caller_id_by_id_parameters => $verify_caller_id_by_id_parameters, callerid_id => $callerid_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallerIdsApi->verify_caller_id_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_caller_id_by_id_parameters** | [**VerifyCallerIdByIdParameters**](VerifyCallerIdByIdParameters.md)| Request body | 
 **callerid_id** | **string**| CalleridId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

