#!/usr/bin/perl

use 5.006;
use strict;
use warnings;
use Test::More tests => 16;

use Jarvis;

use File::Touch;

ok( Jarvis->connect( 'test_Jarvis_changes/' ) , 'Init Directory for Jarvis' );
ok( Jarvis->process(), 'Reading connected directory' );
ok( touch( 'test_Jarvis_changes/new_file_1' ), 'Adding 1st new file to watched directory' );
ok( Jarvis->changes(), 'Reporting changes to new_file_1 [create]' );
ok( touch( 'test_Jarvis_changes/new_file_2' ), 'Adding 2nd new file to watched directory' );
ok( Jarvis->changes(), 'Reporting changes to new_file_2 [create]' );
ok( touch( 'test_Jarvis_changes/new_file_1' ), 'Adding 1st new file to watched directory' );
ok( Jarvis->changes(), 'Reporting changes to new_file_1 [change]' );
ok( mkdir 'test_new_directory', 'Create subdirectory to test' );
ok( Jarvis->changes(), 'Reporting changes to test_new_directory [create]' );
ok( touch( 'test_new_directory/new_file_3' ), 'Adding 3rd new file to watched subdirectory' );
ok( Jarvis->changes(), 'Reporting changes to new_file_3 in subdirectory [create]' );
ok( unlink 'test_Jarvis_changes/new_file_1', 'Removing 1st new file' );
ok( unlink 'test_Jarvis_changes/new_file_2', 'Removing 2nd new file' );
ok( unlink 'test_Jarvis_changes/test_new_directory/new_file_3', 'Removing 2nd new file' );
ok( rmdir 'test_Jarvis_changes/test_new_directory/', 'Removing new directory' );
