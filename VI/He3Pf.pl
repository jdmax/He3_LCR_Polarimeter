#!/usr/bin/perl

$p = @ARGV[0];

$p = 1 unless $p;
$Z= 0.748;
#$p = 1.01;
$n = $p*3.22e22*1e-6;
$v = 2.03e3*1e2;
$s1 = 148e-16;
$s2 = 198e-16;
$s0 = 97e-16;

$a = (2/5)*8.74e8;
$G = 6.58e7;
$Gp = $G+$n*$s0*$v;
$g1 = $n*$s1*$v;
$g2 = $n*$s2*$v;


$num = $Z*3*$a**2*($Gp+$g2)/2;
$denom =($Gp+$g2)*($Gp+$g1)**2+6*$a**2*($Gp+$g1)*($Gp+2*$g2/3)/$Gp+$a**2*($Gp-$g1+2*$g2)/4;

$P = $denom/$num;

#print "Pressure: $p\nFactor: $P\n";
print $P;
