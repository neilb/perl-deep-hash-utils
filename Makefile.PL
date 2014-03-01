use ExtUtils::MakeMaker;

my $mm_ver = $ExtUtils::MakeMaker::VERSION;
if ($mm_ver =~ /_/) { # dev version
    $mm_ver = eval $mm_ver;
    die $@ if $@;
}

WriteMakefile(
    NAME              => 'Deep::Hash::Utils',
    VERSION_FROM      => 'lib/Deep/Hash/Utils.pm',
    PREREQ_PM         => {},

    ($mm_ver <= 6.45
        ? ()
        : (META_MERGE => {
            'meta-spec' => { version => 2 },
            resources => {
                bugtracker  => 'http://rt.cpan.org/Public/Dist/Display.html?Name=Deep-Hash-Utils',
                repository  => {
                    type => 'git',
                    web  => 'https://github.com/clbecker/perl-deep-hash-utils',
                    url  => 'git://github.com/clbecker/perl-deep-hash-utils.git',
                },
            },
          })
    ),
);
