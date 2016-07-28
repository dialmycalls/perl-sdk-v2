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
package WWW::DialMyCalls::Object::UpdateContactByIdParameters;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::DialMyCalls::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'UpdateContactByIdParameters',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'firstname' => {
    	datatype => 'string',
    	base_name => 'firstname',
    	description => 'The contact&#39;s first name.',
    	format => '',
    	read_only => '',
    		},
    'lastname' => {
    	datatype => 'string',
    	base_name => 'lastname',
    	description => 'The contact&#39;s last name.',
    	format => '',
    	read_only => '',
    		},
    'phone' => {
    	datatype => 'string',
    	base_name => 'phone',
    	description => '(Required)  The contact&#39;s phone number.',
    	format => '',
    	read_only => '',
    		},
    'extension' => {
    	datatype => 'string',
    	base_name => 'extension',
    	description => 'The contact&#39;s phone extension.',
    	format => '',
    	read_only => '',
    		},
    'email' => {
    	datatype => 'string',
    	base_name => 'email',
    	description => 'The contact&#39;s email address.',
    	format => '',
    	read_only => '',
    		},
    'extra1' => {
    	datatype => 'string',
    	base_name => 'extra1',
    	description => 'Miscellaneous data about this contact.',
    	format => '',
    	read_only => '',
    		},
    'groups' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'groups',
    	description => 'List of group IDs that this contact should belong to.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'firstname' => 'string',
    'lastname' => 'string',
    'phone' => 'string',
    'extension' => 'string',
    'email' => 'string',
    'extra1' => 'string',
    'groups' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'firstname' => 'firstname',
    'lastname' => 'lastname',
    'phone' => 'phone',
    'extension' => 'extension',
    'email' => 'email',
    'extra1' => 'extra1',
    'groups' => 'groups'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
