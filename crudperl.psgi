use strict;
use warnings;

use CrudPerl;

my $app = CrudPerl->apply_default_middlewares(CrudPerl->psgi_app);
$app;

