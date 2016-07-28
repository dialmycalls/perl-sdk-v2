# WWW::DialMyCalls::AccountsApi

## Load the API package
```perl
use WWW::DialMyCalls::Object::AccountsApi;
```

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_access_account**](AccountsApi.md#create_access_account) | **POST** /accessaccount | Add Access Account
[**delete_access_account_by_id**](AccountsApi.md#delete_access_account_by_id) | **DELETE** /accessaccount/{AccessAccountId} | Delete Access Account
[**get_access_account_by_id**](AccountsApi.md#get_access_account_by_id) | **GET** /accessaccount/{AccessAccountId} | Get Access Account
[**get_access_accounts**](AccountsApi.md#get_access_accounts) | **GET** /accessaccounts | List Access Accounts
[**get_account**](AccountsApi.md#get_account) | **GET** /account | Get Account
[**update_access_account_by_id**](AccountsApi.md#update_access_account_by_id) | **PUT** /accessaccount/{AccessAccountId} | Update Access Account


# **create_access_account**
> object create_access_account(create_access_account_parameters => $create_access_account_parameters)

Add Access Account

Add a access account. <br><br> Returns a access account object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"email\\\": \\\"test@test.com\\\", \\\"password\\\": \\\"1234A5678\\\", \\\"name\\\": \\\"John Doe\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/accessaccount ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::AccountsApi->new();
my $create_access_account_parameters = WWW::DialMyCalls::Object::CreateAccessAccountParameters->new(); # CreateAccessAccountParameters | Request body

eval { 
    my $result = $api_instance->create_access_account(create_access_account_parameters => $create_access_account_parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountsApi->create_access_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_access_account_parameters** | [**CreateAccessAccountParameters**](CreateAccessAccountParameters.md)| Request body | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_access_account_by_id**
> object delete_access_account_by_id(access_account_id => $access_account_id)

Delete Access Account

Delete a access account. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::AccountsApi->new();
my $access_account_id = 'access_account_id_example'; # string | AccessAccountId

eval { 
    my $result = $api_instance->delete_access_account_by_id(access_account_id => $access_account_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountsApi->delete_access_account_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_account_id** | **string**| AccessAccountId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_access_account_by_id**
> object get_access_account_by_id(access_account_id => $access_account_id)

Get Access Account

Retrieve an access account. <br><br> Returns a access account object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::AccountsApi->new();
my $access_account_id = 'access_account_id_example'; # string | AccessAccountId

eval { 
    my $result = $api_instance->get_access_account_by_id(access_account_id => $access_account_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountsApi->get_access_account_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_account_id** | **string**| AccessAccountId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_access_accounts**
> object get_access_accounts(range => $range)

List Access Accounts

Retrieve a list of access accounts. <br><br> Returns a list of access account objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccounts ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::AccountsApi->new();
my $range = 'range_example'; # string | Range (ie \"records=201-300\") of accessaccounts requested

eval { 
    my $result = $api_instance->get_access_accounts(range => $range);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountsApi->get_access_accounts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **string**| Range (ie \&quot;records&#x3D;201-300\&quot;) of accessaccounts requested | [optional] 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_account**
> object get_account()

Get Account

Retrieve account details. <br><br> Returns a account object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/account ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::AccountsApi->new();

eval { 
    my $result = $api_instance->get_account();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountsApi->get_account: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_access_account_by_id**
> object update_access_account_by_id(update_access_account_by_id_parameters => $update_access_account_by_id_parameters, access_account_id => $access_account_id)

Update Access Account

Update an existing access account. <br><br> Returns a access account object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"New Name\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```

### Example 
```perl
use Data::Dumper;

# Configure API key authorization: api_key
$WWW::DialMyCalls::Configuration::api_key->{'X-Auth-ApiKey'} = 'YOUR_API_KEY';

my $api_instance = WWW::DialMyCalls::AccountsApi->new();
my $update_access_account_by_id_parameters = WWW::DialMyCalls::Object::UpdateAccessAccountByIdParameters->new(); # UpdateAccessAccountByIdParameters | Request body
my $access_account_id = 'access_account_id_example'; # string | AccessAccountId

eval { 
    my $result = $api_instance->update_access_account_by_id(update_access_account_by_id_parameters => $update_access_account_by_id_parameters, access_account_id => $access_account_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountsApi->update_access_account_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_access_account_by_id_parameters** | [**UpdateAccessAccountByIdParameters**](UpdateAccessAccountByIdParameters.md)| Request body | 
 **access_account_id** | **string**| AccessAccountId | 

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

