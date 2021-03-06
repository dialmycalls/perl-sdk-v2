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
package WWW::DialMyCalls::ApiFactory;

use strict;
use warnings;
use utf8;

use Carp;
use Module::Find;

usesub WWW::DialMyCalls::Object;

use WWW::DialMyCalls::ApiClient;

=head1 Name

	WWW::DialMyCalls::ApiFactory - constructs APIs to retrieve WWW::DialMyCalls objects

=head1 Synopsis

	package My::Petstore::App;
	
	use WWW::DialMyCalls::ApiFactory;
	
	my $api_factory = WWW::DialMyCalls::ApiFactory->new( ... ); # any args for ApiClient constructor
							  
	# later...
	my $pet_api = $api_factory->get_api('Pet');  
	
	# $pet_api isa WWW::DialMyCalls::PetApi
	
	my $pet = $pet_api->get_pet_by_id(pet_id => $pet_id);
	
	# object attributes have proper accessors:
	printf "Pet's name is %s", $pet->name;
	
	# change the value stored on the object:
	$pet->name('Dave'); 

=cut

# Load all the API classes and construct a lookup table at startup time
my %_apis = map { $_ =~ /^WWW::DialMyCalls::(.*)$/; $1 => $_ } 
			grep {$_ =~ /Api$/} 
			usesub 'WWW::DialMyCalls';

=head1 new()
	
	Any parameters are optional, and are passed to and stored on the api_client object. 
	
	base_url: (optional)
		supply this to change the default base URL taken from the Swagger definition.
	
=cut	

sub new {
    my ($class, %p) = (shift, @_);
	$p{api_client} = WWW::DialMyCalls::ApiClient->instance(%p);			
	return bless \%p, $class;
}

=head1 get_api($which)

	Returns an API object of the requested type. 
	
	$which is a nickname for the class: 
	
		FooBarClient::BazApi has nickname 'Baz'
		
=cut

sub get_api {
	my ($self, $which) = @_;
	croak "API not specified" unless $which;
	my $api_class = $_apis{"${which}Api"} || croak "No known API for '$which'";
	return $api_class->new(api_client => $self->api_client); 
}

=head1 api_client()

	Returns the api_client object, should you ever need it.
	
=cut

sub api_client { $_[0]->{api_client} }

=head1 apis_available()
=cut 

sub apis_available { return map { $_ =~ s/Api$//; $_ } sort keys %_apis }

=head1 classname_for()
=cut

sub classname_for {
	my ($self, $api_name) = @_;
	return $_apis{"${api_name}Api"};
}


1;
