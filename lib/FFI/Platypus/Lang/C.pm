package FFI::Platypus::Lang::C;

use strict;
use warnings;

# ABSTRACT: Documentation and tools for using Platypus with the C programming language
our $VERSION = '0.42'; # VERSION


sub native_type_map
{
  require FFI::Platypus::ConfigData;
  FFI::Platypus::ConfigData->config('type_map');
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

FFI::Platypus::Lang::C - Documentation and tools for using Platypus with the C programming language

=head1 VERSION

version 0.42

=head1 SYNOPSIS

 use FFI::Platypus;
 my $ffi = FFI::Platypus->new;
 $ffi->lang('C'); # the default

=head1 DESCRIPTION

This module provides some hooks for Platypus to interact with the C 
programming language.  It is generally used by default if you do not 
specify another foreign programming language with the 
L<FFI::Platypus#lang> attribute.

=head1 METHODS

=head2 native_type_map

 my $hashref = FFI::Platypus::Lang::C->native_type_map;

This returns a hash reference containing the native aliases for the
C programming languages.  That is the keys are native C types and the
values are libffi native types.

=head1 SEE ALSO

=over 4

=item L<FFI::Platypus>

The Core Platypus documentation.

=back

=head1 AUTHOR

Author: Graham Ollis E<lt>plicease@cpan.orgE<gt>

Contributors:

Bakkiaraj Murugesan (bakkiaraj)

Dylan Cali (calid)

pipcet

Zaki Mughal (zmughal)

Fitz Elliott (felliott)

Vickenty Fesunov (vyf)

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
