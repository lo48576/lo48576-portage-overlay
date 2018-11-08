# Copyright 2017-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.6.3
ansi_term-0.9.0
atty-0.2.2
backtrace-0.3.3
backtrace-sys-0.1.12
bitflags-0.9.1
cfg-if-0.1.2
chrono-0.3.0
clap-2.26.1
cmake-0.1.25
curl-sys-0.3.14
dbghelp-sys-0.2.0
error-chain-0.10.0
gcc-0.3.54
git2-0.6.8
idna-0.1.4
is-match-0.1.0
kernel32-sys-0.2.2
lazy_static-0.2.8
libc-0.2.30
libgit2-sys-0.6.14
libgitdit-0.4.0
libssh2-sys-0.2.6
libz-sys-1.0.16
log-0.3.8
matches-0.1.6
memchr-1.0.1
num-0.1.40
num-integer-0.1.35
num-iter-0.1.34
num-traits-0.1.40
openssl-probe-0.1.1
openssl-sys-0.9.17
percent-encoding-1.0.0
pkg-config-0.3.9
redox_syscall-0.1.31
regex-0.2.2
regex-syntax-0.4.1
rustc-demangle-0.1.5
strsim-0.6.0
term_size-0.3.0
textwrap-0.8.0
thread_local-0.3.4
time-0.1.38
unicode-bidi-0.3.4
unicode-normalization-0.1.5
unicode-width-0.1.4
unreachable-1.0.0
url-1.5.1
utf8-ranges-1.0.0
vcpkg-0.2.2
vec_map-0.8.0
void-1.0.2
winapi-0.2.8
winapi-build-0.1.1
yaml-rust-0.3.5
"

inherit cargo

DESCRIPTION="A CLI frontend for libgitdit - a distributed issue tracker"
HOMEPAGE=""
SRC_URI="https://github.com/neithernut/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="|| ( GPL-2 MPL-2.0 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND="doc? ( app-text/pandoc )"
RDEPEND=""

src_compile() {
	cargo_src_compile

	if use doc ; then
		pandoc -s -S -f markdown -t man "${S}/git-dit.1" -o git-dit.1 || die "Failed to generate man page"
	fi
}

src_test() {
	cargo test || die "tests failed"
}

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md

	if use doc ; then
		doman git-dit.1
	fi
}