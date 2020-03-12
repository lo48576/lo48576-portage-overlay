# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
ansi_term-0.11.0
atty-0.2.14
bitflags-1.2.1
clap-2.33.0
hermit-abi-0.1.8
libc-0.2.67
strsim-0.8.0
textwrap-0.11.0
unicode-width-0.1.7
vec_map-0.8.1
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="hexdump utility"
HOMEPAGE="https://github.com/sitkevij/hex"
SRC_URI="https://github.com/sitkevij/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	cargo_src_install
	dodoc README.md
}
