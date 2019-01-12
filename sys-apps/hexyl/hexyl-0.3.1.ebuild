# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
ansi_term-0.11.0
atty-0.2.11
bitflags-1.0.4
clap-2.32.0
hexyl-0.3.1
kernel32-sys-0.2.2
libc-0.2.46
redox_syscall-0.1.50
redox_termios-0.1.1
strsim-0.7.0
term_size-0.3.1
termion-1.5.1
textwrap-0.10.0
unicode-width-0.1.5
vec_map-0.8.1
winapi-0.2.8
winapi-0.3.6
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="A command-line hex viewer"
HOMEPAGE="https://github.com/sharkdp/hexyl"
SRC_URI="https://github.com/sharkdp/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
