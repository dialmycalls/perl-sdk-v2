=begin comment

DialMyCalls API

The DialMyCalls API

OpenAPI spec version: 2.0.1
Contact: support@dialmycalls.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::DialMyCalls::ContactsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::DialMyCalls::ApiClient;
use WWW::DialMyCalls::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::DialMyCalls::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_contact
#
# Add Contact
# 
# @param CreateContactParameters $create_contact_parameters Request body (required)
{
    my $params = {
    'create_contact_parameters' => {
        data_type => 'CreateContactParameters',
        description => 'Request body',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_contact' } = { 
    	summary => 'Add Contact',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_contact {
    my ($self, %args) = @_;

    # verify the required parameter 'create_contact_parameters' is set
    unless (exists $args{'create_contact_parameters'}) {
      croak("Missing the required parameter 'create_contact_parameters' when calling create_contact");
    }

    # parse inputs
    my $_resource_path = '/contact';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'application/xml');

    my $_body_data;
    # body params
    if ( exists $args{'create_contact_parameters'}) {
        $_body_data = $args{'create_contact_parameters'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# delete_contact_by_id
#
# Delete Contact
# 
# @param string $contact_id ContactId (required)
{
    my $params = {
    'contact_id' => {
        data_type => 'string',
        description => 'ContactId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_contact_by_id' } = { 
    	summary => 'Delete Contact',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub delete_contact_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'contact_id' is set
    unless (exists $args{'contact_id'}) {
      croak("Missing the required parameter 'contact_id' when calling delete_contact_by_id");
    }

    # parse inputs
    my $_resource_path = '/contact/{ContactId}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'application/xml');

    # path params
    if ( exists $args{'contact_id'}) {
        my $_base_variable = "{" . "ContactId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'contact_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# get_contact_by_id
#
# Get Contact
# 
# @param string $contact_id ContactId (required)
{
    my $params = {
    'contact_id' => {
        data_type => 'string',
        description => 'ContactId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_contact_by_id' } = { 
    	summary => 'Get Contact',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_contact_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'contact_id' is set
    unless (exists $args{'contact_id'}) {
      croak("Missing the required parameter 'contact_id' when calling get_contact_by_id");
    }

    # parse inputs
    my $_resource_path = '/contact/{ContactId}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'application/xml');

    # path params
    if ( exists $args{'contact_id'}) {
        my $_base_variable = "{" . "ContactId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'contact_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# get_contacts
#
# List Contacts
# 
# @param string $range Range (ie \&quot;records&#x3D;201-300\&quot;) of contacts requested (optional)
{
    my $params = {
    'range' => {
        data_type => 'string',
        description => 'Range (ie \&quot;records&#x3D;201-300\&quot;) of contacts requested',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_contacts' } = { 
    	summary => 'List Contacts',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_contacts {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/contacts';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'application/xml');

    # header params
    if ( exists $args{'range'}) {
        $header_params->{'Range'} = $self->{api_client}->to_header_value($args{'range'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# get_contacts_by_group_id
#
# List Contacts in Group
# 
# @param string $group_id GroupId (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'GroupId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_contacts_by_group_id' } = { 
    	summary => 'List Contacts in Group',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_contacts_by_group_id {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling get_contacts_by_group_id");
    }

    # parse inputs
    my $_resource_path = '/contacts/{GroupId}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'application/xml');

    # path params
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "GroupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# update_contact_by_id
#
# Update Contact
# 
# @param UpdateContactByIdParameters $update_contact_by_id_parameters Request body (required)
# @param string $contact_id ContactId (required)
{
    my $params = {
    'update_contact_by_id_parameters' => {
        data_type => 'UpdateContactByIdParameters',
        description => 'Request body',
        required => '1',
    },
    'contact_id' => {
        data_type => 'string',
        description => 'ContactId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_contact_by_id' } = { 
    	summary => 'Update Contact',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub update_contact_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'update_contact_by_id_parameters' is set
    unless (exists $args{'update_contact_by_id_parameters'}) {
      croak("Missing the required parameter 'update_contact_by_id_parameters' when calling update_contact_by_id");
    }

    # verify the required parameter 'contact_id' is set
    unless (exists $args{'contact_id'}) {
      croak("Missing the required parameter 'contact_id' when calling update_contact_by_id");
    }

    # parse inputs
    my $_resource_path = '/contact/{ContactId}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'application/xml');

    # path params
    if ( exists $args{'contact_id'}) {
        my $_base_variable = "{" . "ContactId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'contact_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_contact_by_id_parameters'}) {
        $_body_data = $args{'update_contact_by_id_parameters'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

1;
