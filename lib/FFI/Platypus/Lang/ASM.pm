package FFI::Platypus::Lang::ASM;

use strict;
use warnings;

# ABSTRACT: Documentation and tools for using Platypus with the Assembly
our $VERSION = '0.42'; # VERSION


sub native_type_map
{
  {}
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

FFI::Platypus::Lang::ASM - Documentation and tools for using Platypus with the Assembly

=head1 VERSION

version 0.42

=head1 SYNOPSIS

 use FFI::Platypus;
 my $ffi = FFI::Platypus->new;
 $ffi->lang('ASM');

=head1 DESCRIPTION

Setting your lang to C<ASM> includes no native type aliases, so types
like C<int> or C<unsigned long> will not work.  You need to specify
instead C<sint32> or C<sint64>.  Although intended for use with Assembly
it could also be used for other languages if you did not want to use
the normal C aliases for native types.

This document will one day include information on bundling Assembly
with your Perl / FFI / Platypus distribution.  Pull requests welcome!

=head1 METHODS

=head2 native_type_map

 my $hashref = FFI::Platypus::Lang::ASM->native_type_map;

This returns an empty hash reference.  For other languages it returns
a hash reference that defines the aliases for the types normally used
for that language.

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
