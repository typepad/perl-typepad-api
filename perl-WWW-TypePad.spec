name:      perl-WWW-TypePad
summary:   perl-WWW-TypePad - Module to access the TypePad API from perl.
version:   0.4000
release:   1%{?dist}
vendor:    SAY Media <cpan@saymedia.com>
packager:  Jonathan Steinert <rpm@hachi.kuiki.net>
license:   Artistic
group:     Applications/CPAN
buildroot: %{_tmppath}/%{name}-%{version}-%(id -u -n)
buildarch: noarch
source:    WWW-TypePad-%{version}.tar.gz
autoreq:   no

BuildRequires: mantle2-adapter >= 69
Requires: mantle2-adapter >= 69

%description
Module to access the TypePad API from perl.

%prep
rm -rf "%{buildroot}"
%setup -n WWW-TypePad-%{version}

%build
PERL5LIB=/usr/local/6a/mantle2/cpan-lib/:$PERL5LIB %{__perl} Makefile.PL PREFIX=%{buildroot}%{_prefix}
make all
make test

%install
make pure_install

[ -x /usr/lib/rpm/brp-compress ] && /usr/lib/rpm/brp-compress


# remove special files
find %{buildroot} \(                    \
       -name "perllocal.pod"            \
    -o -name ".packlist"                \
    -o -name "*.bs"                     \
    \) -exec rm -f {} \;

# no empty directories
find %{buildroot}%{_prefix}             \
    -type d -depth -empty               \
    -exec rmdir {} \;

%clean
[ "%{buildroot}" != "/" ] && rm -rf %{buildroot}

%files
%defattr(-,root,root)
%{_prefix}/lib/*
%{_prefix}/share/man/man3
