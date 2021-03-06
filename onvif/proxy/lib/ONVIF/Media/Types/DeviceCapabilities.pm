package ONVIF::Media::Types::DeviceCapabilities;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %XAddr_of :ATTR(:get<XAddr>);
my %Network_of :ATTR(:get<Network>);
my %System_of :ATTR(:get<System>);
my %IO_of :ATTR(:get<IO>);
my %Security_of :ATTR(:get<Security>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        XAddr
        Network
        System
        IO
        Security
        Extension

    ) ],
    {
        'XAddr' => \%XAddr_of,
        'Network' => \%Network_of,
        'System' => \%System_of,
        'IO' => \%IO_of,
        'Security' => \%Security_of,
        'Extension' => \%Extension_of,
    },
    {
        'XAddr' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
        'Network' => 'ONVIF::Media::Types::NetworkCapabilities',
        'System' => 'ONVIF::Media::Types::SystemCapabilities',
        'IO' => 'ONVIF::Media::Types::IOCapabilities',
        'Security' => 'ONVIF::Media::Types::SecurityCapabilities',
        'Extension' => 'ONVIF::Media::Types::DeviceCapabilitiesExtension',
    },
    {

        'XAddr' => 'XAddr',
        'Network' => 'Network',
        'System' => 'System',
        'IO' => 'IO',
        'Security' => 'Security',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::DeviceCapabilities

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DeviceCapabilities from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * XAddr


=item * Network


=item * System


=item * IO


=item * Security


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::DeviceCapabilities
   XAddr =>  $some_value, # anyURI
   Network =>  { # ONVIF::Media::Types::NetworkCapabilities
     IPFilter =>  $some_value, # boolean
     ZeroConfiguration =>  $some_value, # boolean
     IPVersion6 =>  $some_value, # boolean
     DynDNS =>  $some_value, # boolean
     Extension =>  { # ONVIF::Media::Types::NetworkCapabilitiesExtension
       Dot11Configuration =>  $some_value, # boolean
       Extension =>  { # ONVIF::Media::Types::NetworkCapabilitiesExtension2
       },
     },
   },
   System =>  { # ONVIF::Media::Types::SystemCapabilities
     DiscoveryResolve =>  $some_value, # boolean
     DiscoveryBye =>  $some_value, # boolean
     RemoteDiscovery =>  $some_value, # boolean
     SystemBackup =>  $some_value, # boolean
     SystemLogging =>  $some_value, # boolean
     FirmwareUpgrade =>  $some_value, # boolean
     SupportedVersions =>  { # ONVIF::Media::Types::OnvifVersion
       Major =>  $some_value, # int
       Minor =>  $some_value, # int
     },
     Extension =>  { # ONVIF::Media::Types::SystemCapabilitiesExtension
       HttpFirmwareUpgrade =>  $some_value, # boolean
       HttpSystemBackup =>  $some_value, # boolean
       HttpSystemLogging =>  $some_value, # boolean
       HttpSupportInformation =>  $some_value, # boolean
       Extension =>  { # ONVIF::Media::Types::SystemCapabilitiesExtension2
       },
     },
   },
   IO =>  { # ONVIF::Media::Types::IOCapabilities
     InputConnectors =>  $some_value, # int
     RelayOutputs =>  $some_value, # int
     Extension =>  { # ONVIF::Media::Types::IOCapabilitiesExtension
       Auxiliary =>  $some_value, # boolean
       AuxiliaryCommands => $some_value, # AuxiliaryData
       Extension =>  { # ONVIF::Media::Types::IOCapabilitiesExtension2
       },
     },
   },
   Security =>  { # ONVIF::Media::Types::SecurityCapabilities
     TLS1__1 =>  $some_value, # boolean
     TLS1__2 =>  $some_value, # boolean
     OnboardKeyGeneration =>  $some_value, # boolean
     AccessPolicyConfig =>  $some_value, # boolean
     X__509Token =>  $some_value, # boolean
     SAMLToken =>  $some_value, # boolean
     KerberosToken =>  $some_value, # boolean
     RELToken =>  $some_value, # boolean
     Extension =>  { # ONVIF::Media::Types::SecurityCapabilitiesExtension
       TLS1__0 =>  $some_value, # boolean
       Extension =>  { # ONVIF::Media::Types::SecurityCapabilitiesExtension2
         Dot1X =>  $some_value, # boolean
         SupportedEAPMethod =>  $some_value, # int
         RemoteUserHandling =>  $some_value, # boolean
       },
     },
   },
   Extension =>  { # ONVIF::Media::Types::DeviceCapabilitiesExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

