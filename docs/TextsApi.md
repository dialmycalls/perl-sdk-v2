# WWW::DialMyCalls::TextsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::TextsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_text_by_id**](TextsApi.md#cancel_text_by_id) | **DELETE** /service/text/{TextId} | Cancel Text
[**create_text**](TextsApi.md#create_text) | **POST** /service/text | Create Text
[**delete_incoming_text_by_id**](TextsApi.md#delete_incoming_text_by_id) | **DELETE** /incoming/text/{TextId} | Delete Incoming Text
[**get_incoming_text_by_id**](TextsApi.md#get_incoming_text_by_id) | **GET** /incoming/text/{TextId} | Get Incoming Text
[**get_incoming_texts**](TextsApi.md#get_incoming_texts) | **GET** /incoming/texts | List Incoming Texts
[**get_short_codes**](TextsApi.md#get_short_codes) | **GET** /shortcodes | List Shortcodes
[**get_text_by_id**](TextsApi.md#get_text_by_id) | **GET** /service/text/{TextId} | Get Text
[**get_text_recipients_by_text_id**](TextsApi.md#get_text_recipients_by_text_id) | **GET** /service/text/{TextId}/recipients | Get Text Recipients
[**get_texts**](TextsApi.md#get_texts) | **GET** /service/texts | List Texts


# **cancel_text_by_id**
> object cancel_text_by_id(text_id => $text_id)

Cancel Text

Cancel an outgoing text. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/service/text/$TEXT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $text_id = 'text_id_example'; # string | TextId

eval { 
    my $result = $api_instance->cancel_text_by_id(text_id => $text_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->cancel_text_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **string**| TextId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_text**
> object create_text(create_text_parameters => $create_text_parameters)

Create Text

Create an outgoing text broadcast. <br><br> Returns a service object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"keyword_id\\\": \\\"dfe49537-a0a8-4f4a-98a1-e03df388af11\\\", \\\"send_immediately\\\": true,\\\"messages\\\": [\\\"Testing testing\\\"], \\\"contacts\\\": [{\\\"phone\\\":\\\"1116551235\\\"},{\\\"phone\\\":\\\"1116551234\\\"}]}\" https://$API_KEY@api.dialmycalls.com/2.0/service/text ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $create_text_parameters = WWW::DialMyCalls::Object::CreateTextParameters->new(); # CreateTextParameters | Request body

eval { 
    my $result = $api_instance->create_text(create_text_parameters => $create_text_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->create_text: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_text_parameters** | [**CreateTextParameters**](CreateTextParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_incoming_text_by_id**
> object delete_incoming_text_by_id(text_id => $text_id)

Delete Incoming Text

Delete a incoming text. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/incoming/text/$TEXT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $text_id = 'text_id_example'; # string | TextId

eval { 
    my $result = $api_instance->delete_incoming_text_by_id(text_id => $text_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->delete_incoming_text_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **string**| TextId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_incoming_text_by_id**
> object get_incoming_text_by_id(text_id => $text_id)

Get Incoming Text

Retrieve a text. <br><br> Returns a Incoming Text object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/incoming/text/$TEXT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $text_id = 'text_id_example'; # string | TextId

eval { 
    my $result = $api_instance->get_incoming_text_by_id(text_id => $text_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->get_incoming_text_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **string**| TextId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_incoming_texts**
> object get_incoming_texts(range => $range)

List Incoming Texts

Retrieve a list of texts. <br><br> Returns a list of Incoming Text objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/incoming/texts ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of texts requested

eval { 
    my $result = $api_instance->get_incoming_texts(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->get_incoming_texts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of texts requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_short_codes**
> object get_short_codes(range => $range)

List Shortcodes

Retrieve a list of shortcodes. <br><br> Returns a list of shortcode objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/shortcodes ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of shortcodes requested

eval { 
    my $result = $api_instance->get_short_codes(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->get_short_codes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of shortcodes requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_text_by_id**
> object get_text_by_id(text_id => $text_id)

Get Text

Retrieve a text. <br><br> Returns a service object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/text/$TEXT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $text_id = 'text_id_example'; # string | TextId

eval { 
    my $result = $api_instance->get_text_by_id(text_id => $text_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->get_text_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **string**| TextId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_text_recipients_by_text_id**
> object get_text_recipients_by_text_id(text_id => $text_id, range => $range)

Get Text Recipients

Retrieve a list of a text's recipients. <br><br> Returns a list of text recipient objects if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/text/$TEXT_ID/recipients ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $text_id = 'text_id_example'; # string | TextId
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of recipients requested

eval { 
    my $result = $api_instance->get_text_recipients_by_text_id(text_id => $text_id, range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->get_text_recipients_by_text_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **string**| TextId | 
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of recipients requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_texts**
> object get_texts(range => $range)

List Texts

Retrieve a list of texts. <br><br> Returns a list of service objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/texts ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::TextsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of texts requested

eval { 
    my $result = $api_instance->get_texts(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextsApi->get_texts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of texts requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

