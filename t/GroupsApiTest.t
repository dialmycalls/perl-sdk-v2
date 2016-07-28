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
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::DialMyCalls::GroupsApi');

my $api = WWW::DialMyCalls::GroupsApi->new();
isa_ok($api, 'WWW::DialMyCalls::GroupsApi');

#
# create_group test
#
{
    my $create_group_parameters = undef; # replace NULL with a proper value
    my $result = $api->create_group(create_group_parameters => $create_group_parameters);
}

#
# delete_group_by_id test
#
{
    my $group_id = undef; # replace NULL with a proper value
    my $result = $api->delete_group_by_id(group_id => $group_id);
}

#
# get_group_by_id test
#
{
    my $group_id = undef; # replace NULL with a proper value
    my $result = $api->get_group_by_id(group_id => $group_id);
}

#
# get_groups test
#
{
    my $range = undef; # replace NULL with a proper value
    my $result = $api->get_groups(range => $range);
}

#
# update_group_by_id test
#
{
    my $update_group_by_id_parameters = undef; # replace NULL with a proper value
    my $group_id = undef; # replace NULL with a proper value
    my $result = $api->update_group_by_id(update_group_by_id_parameters => $update_group_by_id_parameters, group_id => $group_id);
}


1;
