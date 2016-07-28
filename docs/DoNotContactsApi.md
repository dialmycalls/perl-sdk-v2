# WWW::DialMyCalls::DoNotContactsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::DoNotContactsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_do_not_contacts**](DoNotContactsApi.md#get_do_not_contacts) | **GET** /donotcontacts | List DoNotContacts


# **get_do_not_contacts**
> object get_do_not_contacts(range => $range)

List DoNotContacts

Retrieve a list of donotcontacts. <br><br> Returns a list of donotcontact objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/donotcontacts ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::DoNotContactsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of donotcontacts requested

eval { 
    my $result = $api_instance->get_do_not_contacts(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DoNotContactsApi->get_do_not_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of donotcontacts requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

