use strict;
use warnings;
use Test::More;


use Catalyst::Test 'CrudPerl';
use CrudPerl::Controller::Cars;

ok( request('/cars')->is_success, 'Request should succeed' );
done_testing();
