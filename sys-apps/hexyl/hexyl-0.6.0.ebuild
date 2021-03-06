# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=7

CRATES="
ansi_term-0.11.0
ansi_term-0.12.1
atty-0.2.13
bitflags-1.2.0
cc-1.0.45
cfg-if-0.1.10
clap-2.33.0
ctrlc-3.1.3
kernel32-sys-0.2.2
libc-0.2.62
nix-0.14.1
strsim-0.8.0
term_size-0.3.1
textwrap-0.11.0
unicode-width-0.1.6
vec_map-0.8.1
void-1.0.2
winapi-0.2.8
winapi-0.3.8
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

src_install() {
	cargo_src_install

	dodoc README.md
}
