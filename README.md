# NAME

WWW::DialMyCalls::Role - a Moose role for the DialMyCalls API

The DialMyCalls API

For more information, please visit [https://www.dialmycalls.com](https://www.dialmycalls.com)

## A note on Moose

This role is the only component of the library that uses Moose. See 
WWW::DialMyCalls::ApiFactory for non-Moosey usage. 

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with 
a web service defined by a OpenAPI Specification. See below for how to build the 
library.

This module provides an interface to the generated library. All the classes, 
objects, and methods (well, not quite \*all\*, see below) are flattened into this 
role. 

        package MyApp;
        use Moose;
        with 'WWW::DialMyCalls::Role';
        
        package main;
        
        my $api = MyApp->new({ tokens => $tokens });
        
        my $contact = $api->get_contact_by_id(contact_id => $contact_id);
        

# LOAD THE MODULES

To load the API packages:
```perl
use WWW::DialMyCalls::AccountsApi;
use WWW::DialMyCalls::CallerIdsApi;
use WWW::DialMyCalls::CallsApi;
use WWW::DialMyCalls::ContactsApi;
use WWW::DialMyCalls::DoNotContactsApi;
use WWW::DialMyCalls::GroupsApi;
use WWW::DialMyCalls::KeywordsApi;
use WWW::DialMyCalls::RecordingsApi;
use WWW::DialMyCalls::TextsApi;
use WWW::DialMyCalls::VanityNumbersApi;

```

To load the models:
```perl
use WWW::DialMyCalls::Object::Accessaccount;
use WWW::DialMyCalls::Object::Account;
use WWW::DialMyCalls::Object::CallRecipient;
use WWW::DialMyCalls::Object::Callerid;
use WWW::DialMyCalls::Object::Callservice;
use WWW::DialMyCalls::Object::Contact;
use WWW::DialMyCalls::Object::ContactAttributes;
use WWW::DialMyCalls::Object::CreateAccessAccountParameters;
use WWW::DialMyCalls::Object::CreateCallParameters;
use WWW::DialMyCalls::Object::CreateCallerIdParameters;
use WWW::DialMyCalls::Object::CreateContactParameters;
use WWW::DialMyCalls::Object::CreateGroupParameters;
use WWW::DialMyCalls::Object::CreateRecordingByPhoneParameters;
use WWW::DialMyCalls::Object::CreateRecordingByUrlParameters;
use WWW::DialMyCalls::Object::CreateRecordingParameters;
use WWW::DialMyCalls::Object::CreateTextParameters;
use WWW::DialMyCalls::Object::CreateUnverifiedCallerIdParameters;
use WWW::DialMyCalls::Object::Donotcontact;
use WWW::DialMyCalls::Object::Group;
use WWW::DialMyCalls::Object::Identifier;
use WWW::DialMyCalls::Object::Incomingtext;
use WWW::DialMyCalls::Object::Keyword;
use WWW::DialMyCalls::Object::Polling;
use WWW::DialMyCalls::Object::PushToListenAgain;
use WWW::DialMyCalls::Object::PushToOptOut;
use WWW::DialMyCalls::Object::PushToRecord;
use WWW::DialMyCalls::Object::PushToTalk;
use WWW::DialMyCalls::Object::Recording;
use WWW::DialMyCalls::Object::Service;
use WWW::DialMyCalls::Object::Shortcode;
use WWW::DialMyCalls::Object::TextRecipient;
use WWW::DialMyCalls::Object::UpdateAccessAccountByIdParameters;
use WWW::DialMyCalls::Object::UpdateCallerIdByIdParameters;
use WWW::DialMyCalls::Object::UpdateContactByIdParameters;
use WWW::DialMyCalls::Object::UpdateGroupByIdParameters;
use WWW::DialMyCalls::Object::UpdateRecordingByIdParameters;
use WWW::DialMyCalls::Object::UpdateVanityNumberByIdParameters;
use WWW::DialMyCalls::Object::Vanitynumber;
use WWW::DialMyCalls::Object::VerifyCallerIdByIdParameters;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WWW::DialMyCalls::AccountsApi;
use WWW::DialMyCalls::CallerIdsApi;
use WWW::DialMyCalls::CallsApi;
use WWW::DialMyCalls::ContactsApi;
use WWW::DialMyCalls::DoNotContactsApi;
use WWW::DialMyCalls::GroupsApi;
use WWW::DialMyCalls::KeywordsApi;
use WWW::DialMyCalls::RecordingsApi;
use WWW::DialMyCalls::TextsApi;
use WWW::DialMyCalls::VanityNumbersApi;

# load the models
use WWW::DialMyCalls::Object::Accessaccount;
use WWW::DialMyCalls::Object::Account;
use WWW::DialMyCalls::Object::CallRecipient;
use WWW::DialMyCalls::Object::Callerid;
use WWW::DialMyCalls::Object::Callservice;
use WWW::DialMyCalls::Object::Contact;
use WWW::DialMyCalls::Object::ContactAttributes;
use WWW::DialMyCalls::Object::CreateAccessAccountParameters;
use WWW::DialMyCalls::Object::CreateCallParameters;
use WWW::DialMyCalls::Object::CreateCallerIdParameters;
use WWW::DialMyCalls::Object::CreateContactParameters;
use WWW::DialMyCalls::Object::CreateGroupParameters;
use WWW::DialMyCalls::Object::CreateRecordingByPhoneParameters;
use WWW::DialMyCalls::Object::CreateRecordingByUrlParameters;
use WWW::DialMyCalls::Object::CreateRecordingParameters;
use WWW::DialMyCalls::Object::CreateTextParameters;
use WWW::DialMyCalls::Object::CreateUnverifiedCallerIdParameters;
use WWW::DialMyCalls::Object::Donotcontact;
use WWW::DialMyCalls::Object::Group;
use WWW::DialMyCalls::Object::Identifier;
use WWW::DialMyCalls::Object::Incomingtext;
use WWW::DialMyCalls::Object::Keyword;
use WWW::DialMyCalls::Object::Polling;
use WWW::DialMyCalls::Object::PushToListenAgain;
use WWW::DialMyCalls::Object::PushToOptOut;
use WWW::DialMyCalls::Object::PushToRecord;
use WWW::DialMyCalls::Object::PushToTalk;
use WWW::DialMyCalls::Object::Recording;
use WWW::DialMyCalls::Object::Service;
use WWW::DialMyCalls::Object::Shortcode;
use WWW::DialMyCalls::Object::TextRecipient;
use WWW::DialMyCalls::Object::UpdateAccessAccountByIdParameters;
use WWW::DialMyCalls::Object::UpdateCallerIdByIdParameters;
use WWW::DialMyCalls::Object::UpdateContactByIdParameters;
use WWW::DialMyCalls::Object::UpdateGroupByIdParameters;
use WWW::DialMyCalls::Object::UpdateRecordingByIdParameters;
use WWW::DialMyCalls::Object::UpdateVanityNumberByIdParameters;
use WWW::DialMyCalls::Object::Vanitynumber;
use WWW::DialMyCalls::Object::VerifyCallerIdByIdParameters;

# for displaying the API response data
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

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://api.dialmycalls.com/2.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsApi* | [**create_access_account**](docs/AccountsApi.md#create_access_account) | **POST** /accessaccount | Add Access Account
*AccountsApi* | [**delete_access_account_by_id**](docs/AccountsApi.md#delete_access_account_by_id) | **DELETE** /accessaccount/{AccessAccountId} | Delete Access Account
*AccountsApi* | [**get_access_account_by_id**](docs/AccountsApi.md#get_access_account_by_id) | **GET** /accessaccount/{AccessAccountId} | Get Access Account
*AccountsApi* | [**get_access_accounts**](docs/AccountsApi.md#get_access_accounts) | **GET** /accessaccounts | List Access Accounts
*AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /account | Get Account
*AccountsApi* | [**update_access_account_by_id**](docs/AccountsApi.md#update_access_account_by_id) | **PUT** /accessaccount/{AccessAccountId} | Update Access Account
*CallerIdsApi* | [**create_caller_id**](docs/CallerIdsApi.md#create_caller_id) | **POST** /callerid | Add Caller ID
*CallerIdsApi* | [**create_unverified_caller_id**](docs/CallerIdsApi.md#create_unverified_caller_id) | **POST** /verify/callerid | Add Caller ID (Unverified)
*CallerIdsApi* | [**delete_caller_id_by_id**](docs/CallerIdsApi.md#delete_caller_id_by_id) | **DELETE** /callerid/{CalleridId} | Delete Caller ID
*CallerIdsApi* | [**get_caller_id_by_id**](docs/CallerIdsApi.md#get_caller_id_by_id) | **GET** /callerid/{CalleridId} | Get Caller ID
*CallerIdsApi* | [**get_caller_ids**](docs/CallerIdsApi.md#get_caller_ids) | **GET** /callerids | List Caller IDs
*CallerIdsApi* | [**update_caller_id_by_id**](docs/CallerIdsApi.md#update_caller_id_by_id) | **PUT** /callerid/{CalleridId} | Update Caller ID
*CallerIdsApi* | [**verify_caller_id_by_id**](docs/CallerIdsApi.md#verify_caller_id_by_id) | **PUT** /verify/callerid/{CalleridId} | Verify Caller ID
*CallsApi* | [**cancel_call_by_id**](docs/CallsApi.md#cancel_call_by_id) | **DELETE** /service/call/{CallId} | Cancel Call
*CallsApi* | [**create_call**](docs/CallsApi.md#create_call) | **POST** /service/call | Create Call
*CallsApi* | [**get_call_by_id**](docs/CallsApi.md#get_call_by_id) | **GET** /service/call/{CallId} | Get Call
*CallsApi* | [**get_call_recipients_by_call_id**](docs/CallsApi.md#get_call_recipients_by_call_id) | **GET** /service/call/{CallId}/recipients | Get Call Recipients
*CallsApi* | [**get_calls**](docs/CallsApi.md#get_calls) | **GET** /service/calls | List Calls
*ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /contact | Add Contact
*ContactsApi* | [**delete_contact_by_id**](docs/ContactsApi.md#delete_contact_by_id) | **DELETE** /contact/{ContactId} | Delete Contact
*ContactsApi* | [**get_contact_by_id**](docs/ContactsApi.md#get_contact_by_id) | **GET** /contact/{ContactId} | Get Contact
*ContactsApi* | [**get_contacts**](docs/ContactsApi.md#get_contacts) | **GET** /contacts | List Contacts
*ContactsApi* | [**get_contacts_by_group_id**](docs/ContactsApi.md#get_contacts_by_group_id) | **GET** /contacts/{GroupId} | List Contacts in Group
*ContactsApi* | [**update_contact_by_id**](docs/ContactsApi.md#update_contact_by_id) | **PUT** /contact/{ContactId} | Update Contact
*DoNotContactsApi* | [**get_do_not_contacts**](docs/DoNotContactsApi.md#get_do_not_contacts) | **GET** /donotcontacts | List DoNotContacts
*GroupsApi* | [**create_group**](docs/GroupsApi.md#create_group) | **POST** /group | Add Group
*GroupsApi* | [**delete_group_by_id**](docs/GroupsApi.md#delete_group_by_id) | **DELETE** /group/{GroupId} | Delete Group
*GroupsApi* | [**get_group_by_id**](docs/GroupsApi.md#get_group_by_id) | **GET** /group/{GroupId} | Get Group
*GroupsApi* | [**get_groups**](docs/GroupsApi.md#get_groups) | **GET** /groups | List Groups
*GroupsApi* | [**update_group_by_id**](docs/GroupsApi.md#update_group_by_id) | **PUT** /group/{GroupId} | Update Group
*KeywordsApi* | [**delete_keyword_by_id**](docs/KeywordsApi.md#delete_keyword_by_id) | **DELETE** /keyword/{KeywordId} | Delete Keyword
*KeywordsApi* | [**get_keyword_by_id**](docs/KeywordsApi.md#get_keyword_by_id) | **GET** /keyword/{KeywordId} | Get Keyword
*KeywordsApi* | [**get_keywords**](docs/KeywordsApi.md#get_keywords) | **GET** /keywords | List Keywords
*RecordingsApi* | [**create_recording**](docs/RecordingsApi.md#create_recording) | **POST** /recording/tts | Create Recording (Text-to-Speech)
*RecordingsApi* | [**create_recording_by_phone**](docs/RecordingsApi.md#create_recording_by_phone) | **POST** /recording/phone | Create Recording (Phone)
*RecordingsApi* | [**create_recording_by_url**](docs/RecordingsApi.md#create_recording_by_url) | **POST** /recording/url | Create Recording (URL)
*RecordingsApi* | [**delete_recording_by_id**](docs/RecordingsApi.md#delete_recording_by_id) | **DELETE** /recording/{RecordingId} | Delete Recording
*RecordingsApi* | [**get_recording_by_id**](docs/RecordingsApi.md#get_recording_by_id) | **GET** /recording/{RecordingId} | Get Recording
*RecordingsApi* | [**get_recordings**](docs/RecordingsApi.md#get_recordings) | **GET** /recordings | List Recordings
*RecordingsApi* | [**update_recording_by_id**](docs/RecordingsApi.md#update_recording_by_id) | **PUT** /recording/{RecordingId} | Update Recording
*TextsApi* | [**cancel_text_by_id**](docs/TextsApi.md#cancel_text_by_id) | **DELETE** /service/text/{TextId} | Cancel Text
*TextsApi* | [**create_text**](docs/TextsApi.md#create_text) | **POST** /service/text | Create Text
*TextsApi* | [**delete_incoming_text_by_id**](docs/TextsApi.md#delete_incoming_text_by_id) | **DELETE** /incoming/text/{TextId} | Delete Incoming Text
*TextsApi* | [**get_incoming_text_by_id**](docs/TextsApi.md#get_incoming_text_by_id) | **GET** /incoming/text/{TextId} | Get Incoming Text
*TextsApi* | [**get_incoming_texts**](docs/TextsApi.md#get_incoming_texts) | **GET** /incoming/texts | List Incoming Texts
*TextsApi* | [**get_short_codes**](docs/TextsApi.md#get_short_codes) | **GET** /shortcodes | List Shortcodes
*TextsApi* | [**get_text_by_id**](docs/TextsApi.md#get_text_by_id) | **GET** /service/text/{TextId} | Get Text
*TextsApi* | [**get_text_recipients_by_text_id**](docs/TextsApi.md#get_text_recipients_by_text_id) | **GET** /service/text/{TextId}/recipients | Get Text Recipients
*TextsApi* | [**get_texts**](docs/TextsApi.md#get_texts) | **GET** /service/texts | List Texts
*VanityNumbersApi* | [**delete_vanity_number_by_id**](docs/VanityNumbersApi.md#delete_vanity_number_by_id) | **DELETE** /vanitynumber/{VanityNumberId} | Delete Vanity Number
*VanityNumbersApi* | [**get_vanity_number_by_id**](docs/VanityNumbersApi.md#get_vanity_number_by_id) | **GET** /vanitynumber/{VanityNumberId} | Get Vanity Number
*VanityNumbersApi* | [**get_vanity_numbers**](docs/VanityNumbersApi.md#get_vanity_numbers) | **GET** /vanitynumbers | List Vanity Numbers
*VanityNumbersApi* | [**update_vanity_number_by_id**](docs/VanityNumbersApi.md#update_vanity_number_by_id) | **PUT** /vanitynumber/{VanityNumberId} | Update Vanity Number


# DOCUMENTATION FOR MODELS
 - [WWW::DialMyCalls::Object::Accessaccount](docs/Accessaccount.md)
 - [WWW::DialMyCalls::Object::Account](docs/Account.md)
 - [WWW::DialMyCalls::Object::CallRecipient](docs/CallRecipient.md)
 - [WWW::DialMyCalls::Object::Callerid](docs/Callerid.md)
 - [WWW::DialMyCalls::Object::Callservice](docs/Callservice.md)
 - [WWW::DialMyCalls::Object::Contact](docs/Contact.md)
 - [WWW::DialMyCalls::Object::ContactAttributes](docs/ContactAttributes.md)
 - [WWW::DialMyCalls::Object::CreateAccessAccountParameters](docs/CreateAccessAccountParameters.md)
 - [WWW::DialMyCalls::Object::CreateCallParameters](docs/CreateCallParameters.md)
 - [WWW::DialMyCalls::Object::CreateCallerIdParameters](docs/CreateCallerIdParameters.md)
 - [WWW::DialMyCalls::Object::CreateContactParameters](docs/CreateContactParameters.md)
 - [WWW::DialMyCalls::Object::CreateGroupParameters](docs/CreateGroupParameters.md)
 - [WWW::DialMyCalls::Object::CreateRecordingByPhoneParameters](docs/CreateRecordingByPhoneParameters.md)
 - [WWW::DialMyCalls::Object::CreateRecordingByUrlParameters](docs/CreateRecordingByUrlParameters.md)
 - [WWW::DialMyCalls::Object::CreateRecordingParameters](docs/CreateRecordingParameters.md)
 - [WWW::DialMyCalls::Object::CreateTextParameters](docs/CreateTextParameters.md)
 - [WWW::DialMyCalls::Object::CreateUnverifiedCallerIdParameters](docs/CreateUnverifiedCallerIdParameters.md)
 - [WWW::DialMyCalls::Object::Donotcontact](docs/Donotcontact.md)
 - [WWW::DialMyCalls::Object::Group](docs/Group.md)
 - [WWW::DialMyCalls::Object::Identifier](docs/Identifier.md)
 - [WWW::DialMyCalls::Object::Incomingtext](docs/Incomingtext.md)
 - [WWW::DialMyCalls::Object::Keyword](docs/Keyword.md)
 - [WWW::DialMyCalls::Object::Polling](docs/Polling.md)
 - [WWW::DialMyCalls::Object::PushToListenAgain](docs/PushToListenAgain.md)
 - [WWW::DialMyCalls::Object::PushToOptOut](docs/PushToOptOut.md)
 - [WWW::DialMyCalls::Object::PushToRecord](docs/PushToRecord.md)
 - [WWW::DialMyCalls::Object::PushToTalk](docs/PushToTalk.md)
 - [WWW::DialMyCalls::Object::Recording](docs/Recording.md)
 - [WWW::DialMyCalls::Object::Service](docs/Service.md)
 - [WWW::DialMyCalls::Object::Shortcode](docs/Shortcode.md)
 - [WWW::DialMyCalls::Object::TextRecipient](docs/TextRecipient.md)
 - [WWW::DialMyCalls::Object::UpdateAccessAccountByIdParameters](docs/UpdateAccessAccountByIdParameters.md)
 - [WWW::DialMyCalls::Object::UpdateCallerIdByIdParameters](docs/UpdateCallerIdByIdParameters.md)
 - [WWW::DialMyCalls::Object::UpdateContactByIdParameters](docs/UpdateContactByIdParameters.md)
 - [WWW::DialMyCalls::Object::UpdateGroupByIdParameters](docs/UpdateGroupByIdParameters.md)
 - [WWW::DialMyCalls::Object::UpdateRecordingByIdParameters](docs/UpdateRecordingByIdParameters.md)
 - [WWW::DialMyCalls::Object::UpdateVanityNumberByIdParameters](docs/UpdateVanityNumberByIdParameters.md)
 - [WWW::DialMyCalls::Object::Vanitynumber](docs/Vanitynumber.md)
 - [WWW::DialMyCalls::Object::VerifyCallerIdByIdParameters](docs/VerifyCallerIdByIdParameters.md)


# DOCUMENTATION FOR AUTHORIATION

## api_key

- **Type**: API key 
- **API key parameter name**: X-Auth-ApiKey
- **Location**: HTTP header



