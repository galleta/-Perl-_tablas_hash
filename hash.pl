# *******************************
# * Ejemplo tablas hash en Perl	*
# *******************************

#!/usr/bin/env perl

use 5.010; 			# Usar características de la última versión
use warnings;		# Muestra los warnings
use strict;			# Obliga a no usar variables globales
use utf8;			# Para usar texto con tildes, la ñ, signos raros, etc, en definitiva texto en codificación utf8

# Creo la tabla hash

my %h_capitales = 
(
    'Reino Unido' => 'Londres',
    'Perú' => 'Lima',
    'Francia' => 'Paris',
    'Portugal' => 'Lisboa',
);

# Obtengo el número de elementos de la tabla hash

my $num_entradas = scalar(keys %h_capitales);
print "Hay " . $num_entradas . " paises en la tabla\n";

# Recorro la tabla hash

print "\nRecorro la tabla hash\n\n";

foreach my $pais (keys %h_capitales) 
{
    my $capital = $h_capitales{$pais};
	print "\tLa capital de " . $pais . " es " . $capital . "\n";
}

# Añado un país con su capital

$h_capitales{'Argentina'} = 'Buenos Aires';
$h_capitales{'Italia'} = 'Roma';
$num_entradas = scalar(keys %h_capitales);
print "\nAhora hay " . $num_entradas . " paises en la tabla\n\n";
foreach my $pais (keys %h_capitales) 
{
    my $capital = $h_capitales{$pais};
	print "\tLa capital de " . $pais . " es " . $capital . "\n";
}

# Elimino una entrada de la tabla

delete( $h_capitales{'Argentina'} );
$num_entradas = scalar(keys %h_capitales);
print "\nAhora hay " . $num_entradas . " paises en la tabla\n\n";
foreach my $pais (keys %h_capitales) 
{
    my $capital = $h_capitales{$pais};
	print "\tLa capital de " . $pais . " es " . $capital . "\n";
}

# Compruebo si existe una entrada en la tabla

if (defined $h_capitales{'Argentina'} ) 
{
    print "\nLa capital de Argentina es: " . $h_capitales{'Argentina'} . "n";
}
else
{
	print "\nArgentina no esta definida en la tabla hash\n";
}

# Recorro ordenadamente la tabla

print "\nLos valores de la tabla ordenados son:\n\n";
foreach my $pais (sort keys %h_capitales) 
{
    my $capital = $h_capitales{$pais};
	print "\tLa capital de " . $pais . " es " . $capital . "\n";
}
