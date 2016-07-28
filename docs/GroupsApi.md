# WWW::DialMyCalls::GroupsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::GroupsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_group**](GroupsApi.md#create_group) | **POST** /group | Add Group
[**delete_group_by_id**](GroupsApi.md#delete_group_by_id) | **DELETE** /group/{GroupId} | Delete Group
[**get_group_by_id**](GroupsApi.md#get_group_by_id) | **GET** /group/{GroupId} | Get Group
[**get_groups**](GroupsApi.md#get_groups) | **GET** /groups | List Groups
[**update_group_by_id**](GroupsApi.md#update_group_by_id) | **PUT** /group/{GroupId} | Update Group


# **create_group**
> object create_group(create_group_parameters => $create_group_parameters)

Add Group

Add a contact group. <br><br> Returns a group object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Group\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/group ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::GroupsApi->new();
my $create_group_parameters = WWW::DialMyCalls::Object::CreateGroupParameters->new(); # CreateGroupParameters | Request body

eval { 
    my $result = $api_instance->create_group(create_group_parameters => $create_group_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupsApi->create_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_group_parameters** | [**CreateGroupParameters**](CreateGroupParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group_by_id**
> object delete_group_by_id(group_id => $group_id)

Delete Group

Delete a contact group. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/group/$GROUP_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::GroupsApi->new();
my $group_id = 'group_id_example'; # string | GroupId

eval { 
    my $result = $api_instance->delete_group_by_id(group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupsApi->delete_group_by_id: $@\n";
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

# **get_group_by_id**
> object get_group_by_id(group_id => $group_id)

Get Group

Retrieve a contact group. <br><br> Returns a group object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/group/$GROUP_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::GroupsApi->new();
my $group_id = 'group_id_example'; # string | GroupId

eval { 
    my $result = $api_instance->get_group_by_id(group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupsApi->get_group_by_id: $@\n";
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

# **get_groups**
> object get_groups(range => $range)

List Groups

Retrieve a list of contact groups. <br><br> Returns a list of group objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/groups ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::GroupsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of groups requested

eval { 
    my $result = $api_instance->get_groups(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupsApi->get_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of groups requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group_by_id**
> object update_group_by_id(update_group_by_id_parameters => $update_group_by_id_parameters, group_id => $group_id)

Update Group

Update an existing contact group. <br><br> Returns a group object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"Test Group Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/group/$GROUP_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::GroupsApi->new();
my $update_group_by_id_parameters = WWW::DialMyCalls::Object::UpdateGroupByIdParameters->new(); # UpdateGroupByIdParameters | Request body
my $group_id = 'group_id_example'; # string | GroupId

eval { 
    my $result = $api_instance->update_group_by_id(update_group_by_id_parameters => $update_group_by_id_parameters, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupsApi->update_group_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_group_by_id_parameters** | [**UpdateGroupByIdParameters**](UpdateGroupByIdParameters.md)| Request body | 
 **group_id** | **string**| GroupId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

