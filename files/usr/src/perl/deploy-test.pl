use strict;
use CGI;

my $h = new CGI;

print $h->header;
print $h->start_html( -title   => 'Test script' );

print $h->h1("Perl deployment test");
print $h->p("mod_perl Apache::Registry");
print $h->p("Test id [".time().".$$.".int(rand(999999))."]");
print $h->end_html;





