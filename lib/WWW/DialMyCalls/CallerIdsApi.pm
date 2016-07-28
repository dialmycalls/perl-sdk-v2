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
package WWW::DialMyCalls::CallerIdsApi;

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
# create_caller_id
#
# Add Caller ID
# 
# @param CreateCallerIdParameters $create_caller_id_parameters Request body (required)
{
    my $params = {
    'create_caller_id_parameters' => {
        data_type => 'CreateCallerIdParameters',
        description => 'Request body',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_caller_id' } = { 
    	summary => 'Add Caller ID',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_caller_id {
    my ($self, %args) = @_;

    # verify the required parameter 'create_caller_id_parameters' is set
    unless (exists $args{'create_caller_id_parameters'}) {
      croak("Missing the required parameter 'create_caller_id_parameters' when calling create_caller_id");
    }

    # parse inputs
    my $_resource_path = '/callerid';
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
    if ( exists $args{'create_caller_id_parameters'}) {
        $_body_data = $args{'create_caller_id_parameters'};
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
# create_unverified_caller_id
#
# Add Caller ID (Unverified)
# 
# @param CreateUnverifiedCallerIdParameters $create_unverified_caller_id_parameters Request body (required)
{
    my $params = {
    'create_unverified_caller_id_parameters' => {
        data_type => 'CreateUnverifiedCallerIdParameters',
        description => 'Request body',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_unverified_caller_id' } = { 
    	summary => 'Add Caller ID (Unverified)',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub create_unverified_caller_id {
    my ($self, %args) = @_;

    # verify the required parameter 'create_unverified_caller_id_parameters' is set
    unless (exists $args{'create_unverified_caller_id_parameters'}) {
      croak("Missing the required parameter 'create_unverified_caller_id_parameters' when calling create_unverified_caller_id");
    }

    # parse inputs
    my $_resource_path = '/verify/callerid';
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
    if ( exists $args{'create_unverified_caller_id_parameters'}) {
        $_body_data = $args{'create_unverified_caller_id_parameters'};
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
# delete_caller_id_by_id
#
# Delete Caller ID
# 
# @param string $callerid_id CalleridId (required)
{
    my $params = {
    'callerid_id' => {
        data_type => 'string',
        description => 'CalleridId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_caller_id_by_id' } = { 
    	summary => 'Delete Caller ID',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub delete_caller_id_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'callerid_id' is set
    unless (exists $args{'callerid_id'}) {
      croak("Missing the required parameter 'callerid_id' when calling delete_caller_id_by_id");
    }

    # parse inputs
    my $_resource_path = '/callerid/{CalleridId}';
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
    if ( exists $args{'callerid_id'}) {
        my $_base_variable = "{" . "CalleridId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'callerid_id'});
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
# get_caller_id_by_id
#
# Get Caller ID
# 
# @param string $callerid_id CalleridId (required)
{
    my $params = {
    'callerid_id' => {
        data_type => 'string',
        description => 'CalleridId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_caller_id_by_id' } = { 
    	summary => 'Get Caller ID',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_caller_id_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'callerid_id' is set
    unless (exists $args{'callerid_id'}) {
      croak("Missing the required parameter 'callerid_id' when calling get_caller_id_by_id");
    }

    # parse inputs
    my $_resource_path = '/callerid/{CalleridId}';
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
    if ( exists $args{'callerid_id'}) {
        my $_base_variable = "{" . "CalleridId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'callerid_id'});
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
# get_caller_ids
#
# List Caller IDs
# 
# @param string $range Range (ie \&quot;records&#x3D;201-300\&quot;) of callerids requested (optional)
{
    my $params = {
    'range' => {
        data_type => 'string',
        description => 'Range (ie \&quot;records&#x3D;201-300\&quot;) of callerids requested',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_caller_ids' } = { 
    	summary => 'List Caller IDs',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_caller_ids {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/callerids';
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
# update_caller_id_by_id
#
# Update Caller ID
# 
# @param UpdateCallerIdByIdParameters $update_caller_id_by_id_parameters Request body (required)
# @param string $callerid_id CalleridId (required)
{
    my $params = {
    'update_caller_id_by_id_parameters' => {
        data_type => 'UpdateCallerIdByIdParameters',
        description => 'Request body',
        required => '1',
    },
    'callerid_id' => {
        data_type => 'string',
        description => 'CalleridId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_caller_id_by_id' } = { 
    	summary => 'Update Caller ID',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub update_caller_id_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'update_caller_id_by_id_parameters' is set
    unless (exists $args{'update_caller_id_by_id_parameters'}) {
      croak("Missing the required parameter 'update_caller_id_by_id_parameters' when calling update_caller_id_by_id");
    }

    # verify the required parameter 'callerid_id' is set
    unless (exists $args{'callerid_id'}) {
      croak("Missing the required parameter 'callerid_id' when calling update_caller_id_by_id");
    }

    # parse inputs
    my $_resource_path = '/callerid/{CalleridId}';
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
    if ( exists $args{'callerid_id'}) {
        my $_base_variable = "{" . "CalleridId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'callerid_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_caller_id_by_id_parameters'}) {
        $_body_data = $args{'update_caller_id_by_id_parameters'};
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
# verify_caller_id_by_id
#
# Verify Caller ID
# 
# @param VerifyCallerIdByIdParameters $verify_caller_id_by_id_parameters Request body (required)
# @param string $callerid_id CalleridId (required)
{
    my $params = {
    'verify_caller_id_by_id_parameters' => {
        data_type => 'VerifyCallerIdByIdParameters',
        description => 'Request body',
        required => '1',
    },
    'callerid_id' => {
        data_type => 'string',
        description => 'CalleridId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'verify_caller_id_by_id' } = { 
    	summary => 'Verify Caller ID',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub verify_caller_id_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'verify_caller_id_by_id_parameters' is set
    unless (exists $args{'verify_caller_id_by_id_parameters'}) {
      croak("Missing the required parameter 'verify_caller_id_by_id_parameters' when calling verify_caller_id_by_id");
    }

    # verify the required parameter 'callerid_id' is set
    unless (exists $args{'callerid_id'}) {
      croak("Missing the required parameter 'callerid_id' when calling verify_caller_id_by_id");
    }

    # parse inputs
    my $_resource_path = '/verify/callerid/{CalleridId}';
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
    if ( exists $args{'callerid_id'}) {
        my $_base_variable = "{" . "CalleridId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'callerid_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'verify_caller_id_by_id_parameters'}) {
        $_body_data = $args{'verify_caller_id_by_id_parameters'};
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
