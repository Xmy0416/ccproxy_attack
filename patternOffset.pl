sub PatternOffset {
     my $pattern = shift;
     my $address = shift;
     my $endian = @_ ? shift() : 'V';
     my @results;
     my ($idx, $lst) = (0,0);
     my $h = hex($address);
     print"$address\n$h\n";
     $address = pack("V", hex($address));
     $idx = index($pattern, $address, $lst);
     print"$address\n$idx\n";
     while ($idx > 0)
     {
          push @results, $idx;
          $lst = $idx + 1;
          $idx = index($pattern, $address, $lst);
     }
     return @results;
}

use warnings;
$location = <STDIN>;
chomp($location);
$total = <STDIN>;
chomp($total);
$ret = PatternOffset($location, $total);
print "the value is  $ret\n";