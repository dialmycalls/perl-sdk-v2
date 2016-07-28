# WWW::DialMyCalls::ContactsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::ContactsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactsApi.md#create_contact) | **POST** /contact | Add Contact
[**delete_contact_by_id**](ContactsApi.md#delete_contact_by_id) | **DELETE** /contact/{ContactId} | Delete Contact
[**get_contact_by_id**](ContactsApi.md#get_contact_by_id) | **GET** /contact/{ContactId} | Get Contact
[**get_contacts**](ContactsApi.md#get_contacts) | **GET** /contacts | List Contacts
[**get_contacts_by_group_id**](ContactsApi.md#get_contacts_by_group_id) | **GET** /contacts/{GroupId} | List Contacts in Group
[**update_contact_by_id**](ContactsApi.md#update_contact_by_id) | **PUT** /contact/{ContactId} | Update Contact


# **create_contact**
> object create_contact(create_contact_parameters => $create_contact_parameters)

Add Contact

Add a contact to your contact list. <br><br> Returns a contact object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/contact ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::ContactsApi->new();
my $create_contact_parameters = WWW::DialMyCalls::Object::CreateContactParameters->new(); # CreateContactParameters | Request body

eval { 
    my $result = $api_instance->create_contact(create_contact_parameters => $create_contact_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactsApi->create_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_contact_parameters** | [**CreateContactParameters**](CreateContactParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contact_by_id**
> object delete_contact_by_id(contact_id => $contact_id)

Delete Contact

Delete a contact from your contact list. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/contact/$CONTACT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::ContactsApi->new();
my $contact_id = 'contact_id_example'; # string | ContactId

eval { 
    my $result = $api_instance->delete_contact_by_id(contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactsApi->delete_contact_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **string**| ContactId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contact_by_id**
> object get_contact_by_id(contact_id => $contact_id)

Get Contact

Retrieve a contact to your contact list. <br><br> Returns a contact object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/contact/$CONTACT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::ContactsApi->new();
my $contact_id = 'contact_id_example'; # string | ContactId

eval { 
    my $result = $api_instance->get_contact_by_id(contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactsApi->get_contact_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **string**| ContactId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contacts**
> object get_contacts(range => $range)

List Contacts

Retrieve a list of contacts. <br><br> Returns a list of contact objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/contacts ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::ContactsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of contacts requested

eval { 
    my $result = $api_instance->get_contacts(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactsApi->get_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of contacts requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contacts_by_group_id**
> object get_contacts_by_group_id(group_id => $group_id)

List Contacts in Group

Retrieve a list of contacts in a contact group. <br><br> Returns a list of contact objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/contacts/$GROUP_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::ContactsApi->new();
my $group_id = 'group_id_example'; # string | GroupId

eval { 
    my $result = $api_instance->get_contacts_by_group_id(group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactsApi->get_contacts_by_group_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **string**| GroupId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_contact_by_id**
> object update_contact_by_id(update_contact_by_id_parameters => $update_contact_by_id_parameters, contact_id => $contact_id)

Update Contact

Update an existing contact in your contact list. <br><br> Returns a contact object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"phone\\\": \\\"5555555555\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/contact/$CONTACT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::ContactsApi->new();
my $update_contact_by_id_parameters = WWW::DialMyCalls::Object::UpdateContactByIdParameters->new(); # UpdateContactByIdParameters | Request body
my $contact_id = 'contact_id_example'; # string | ContactId

eval { 
    my $result = $api_instance->update_contact_by_id(update_contact_by_id_parameters => $update_contact_by_id_parameters, contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactsApi->update_contact_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_contact_by_id_parameters** | [**UpdateContactByIdParameters**](UpdateContactByIdParameters.md)| Request body | 
 **contact_id** | **string**| ContactId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

