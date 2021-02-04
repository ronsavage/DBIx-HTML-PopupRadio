use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my(%params) =
(
	($] ge '5.005') ?
	(
		AUTHOR		=> 'Ron Savage (ron@savage.net.au)',
		ABSTRACT	=> 'Convert db data to HTML popup menu or radio group',
    ) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST DBIx-HTML-PopupRadio-*'
	},
	dist =>
	{
		COMPRESS	=> 'gzip',
		SUFFIX		=> 'gz'
	},
	DISTNAME	=> 'DBIx-HTML-PopupRadio',
	NAME		=> 'DBIx::HTML::PopupRadio',
	PL_FILES	=> {},
	PREREQ_PM	=>
	{
		'Carp'							=> 0,
		'HTML::Entities::Interpolate'	=> 1.00,
	},
	TEST_REQUIRES =>
	{
		'Test::More'	=> 1.001014,
		'Test::Pod'		=> 1.48,
	},
	VERSION_FROM	=> 'lib/DBIx/HTML/PopupRadio.pm',
	INSTALLDIRS		=> 'site',
	EXE_FILES		=> [],
);
