#!/usr/bin/perl

use 5.006;
use strict;
use warnings;
use Test::More tests => 2;

use Jarvis;

use File::Touch;

my $monitor;

ok( $monitor = Jarvis->new( ) , 'Init Directory for Jarvis' );
ok( $monitor->watch( { name => 'test_Jarvis_changes/' } ), 'Reading connected directory' );
#ok( touch( 'test_Jarvis_changes/new_file_1' ), 'Adding 1st new file to watched directory' );
#ok( $monitor->scan(), 'Reporting changes to new_file_1 [create]' );
#ok( touch( 'test_Jarvis_changes/new_file_2' ), 'Adding 2nd new file to watched directory' );
#ok( $monitor->scan(), 'Reporting changes to new_file_2 [create]' );
#ok( touch( 'test_Jarvis_changes/new_file_1' ), 'Adding 1st new file to watched directory' );
#ok( $monitor->scan(), 'Reporting changes to new_file_1 [change]' );
#ok( mkdir 'test_new_directory', 'Create subdirectory to test' );
#ok( $monitor->scan(), 'Reporting changes to test_new_directory [create]' );
#ok( touch( 'test_new_directory/new_file_3' ), 'Adding 3rd new file to watched subdirectory' );
#ok( $monitor->scan(), 'Reporting changes to new_file_3 in subdirectory [create]' );
#ok( unlink 'test_Jarvis_changes/new_file_1', 'Removing 1st new file' );
#ok( unlink 'test_Jarvis_changes/new_file_2', 'Removing 2nd new file' );
#ok( unlink 'test_Jarvis_changes/test_new_directory/new_file_3', 'Removing 2nd new file' );
#ok( rmdir 'test_Jarvis_changes/test_new_directory/', 'Removing new directory' );
