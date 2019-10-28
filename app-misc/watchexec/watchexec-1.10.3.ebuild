# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.6.9
atty-0.2.11
bitflags-1.0.4
cc-1.0.28
cfg-if-0.1.6
clap-2.32.0
env_logger-0.5.13
filetime-0.2.5
fnv-1.0.6
fsevent-0.4.0
fsevent-sys-2.0.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
glob-0.2.11
globset-0.4.2
humantime-1.2.0
inotify-0.6.1
inotify-sys-0.1.3
iovec-0.1.2
kernel32-sys-0.2.2
lazy_static-1.2.0
lazycell-1.2.1
libc-0.2.48
log-0.4.6
memchr-2.1.3
mio-0.6.16
mio-extras-2.0.5
miow-0.2.1
net2-0.2.33
nix-0.13.0
notify-4.0.12
quick-error-1.2.2
redox_syscall-0.1.51
redox_termios-0.1.1
regex-1.1.0
regex-syntax-0.6.4
same-file-1.0.4
slab-0.4.2
term_size-0.3.1
termcolor-1.0.4
termion-1.5.1
textwrap-0.10.0
thread_local-0.3.6
ucd-util-0.1.3
unicode-width-0.1.5
utf8-ranges-1.0.2
void-1.0.2
walkdir-2.2.7
winapi-0.2.8
winapi-0.3.6
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.1
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.1
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="Executes commands in response to file modifications"
HOMEPAGE="https://github.com/watchexec/watchexec"
SRC_URI="https://github.com/watchexec/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND=""