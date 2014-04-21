use ExtUtils::MakeMaker;

my $mm_ver = $ExtUtils::MakeMaker::VERSION;
if ($mm_ver =~ /_/) { # dev version
    $mm_ver = eval $mm_ver;
    die $@ if $@;
}

WriteMakefile(
    NAME              => 'Deep::Hash::Utils',
    VERSION_FROM      => 'lib/Deep/Hash/Utils.pm',
    PREREQ_PM         => {
        'Exporter'  => 0,
        'strict'    => 0,
        'warnings'  => 0,
    },

    ($mm_ver <= 6.45
        ? ()
        : (META_MERGE => {
            'meta-spec' => { version => 2 },
            resources => {
                repository  => {
                    type => 'git',
                    web  => 'https://github.com/neilbowers/perl-deep-hash-utils',
                    url  => 'git://github.com/neilbowers/perl-deep-hash-utils.git',
                },
            },
          })
    ),

    ($mm_ver >= 6.52
        ? (CONFIGURE_REQUIRES => {
                'ExtUtils::MakeMaker' => 6.30,
          })
        : ()
    ),

    ($mm_ver >= 6.64
        ? (TEST_REQUIRES => {
                'Test::More' => 0.88,
          })
        : ()
    ),

    ($mm_ver >= 6.31
        ? (LICENSE => 'perl_5')
        : ()
    ),

    ($mm_ver >= 6.48
        ? (MIN_PERL_VERSION => 5.006)
        : ()
    ),

);
