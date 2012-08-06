package SDL::Joystick;
use strict;
use warnings;
use vars qw($VERSION $XS_VERSION @ISA);
require Exporter;
require DynaLoader;
our @ISA = qw(Exporter DynaLoader);

our $VERSION    = '2.541_09';
our $XS_VERSION = $VERSION;
$VERSION = eval $VERSION;

use SDL::Internal::Loader;
internal_load_dlls(__PACKAGE__);

bootstrap SDL::Joystick;

1;
