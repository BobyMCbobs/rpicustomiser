Name:           rpicustomiser
Version:        1.0.2
Release:        1%{?dist}
Summary:        A useful tool for customising Rasbian. Chroot, install deb packages, copy files, customise.
BuildArch:	noarch
License:        GPLv3
URL:            https://gitlab.com/BobyMCbobs/%{name}
Source0:        https://gitlab.com/BobyMCbobs/%{name}/-/archive/%{version}/%{name}-%{version}.zip
Requires:       qemu, qemu-user-static


%description
UA useful tool for customising Rasbian. Chroot, install deb packages, copy files, customise.


%prep
%autosetup


%install
%{__make} DESTDIR=$RPM_BUILD_ROOT install


%files
%license LICENSE
%doc README.md LICENSE
/usr/bin/%{name}
/usr/share/bash-completion/completions/%{name}


%preun
systemctl disable %{name}
systemctl stop %{name}


%changelog
* Fri May 25 2018 caleb
- Init to RPM

