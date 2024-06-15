# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=8

CRATES="
aho-corasick-0.7.6
ansi_term-0.11.0
arrayvec-0.4.11
atty-0.2.13
bitflags-1.2.0
c2-chacha-0.2.2
cargo_metadata-0.8.2
cc-1.0.45
cfg-if-0.1.10
clap-2.33.0
crossbeam-deque-0.7.1
crossbeam-epoch-0.7.2
crossbeam-queue-0.1.2
crossbeam-utils-0.6.6
ctor-0.1.11
difference-2.0.0
either-1.5.3
fs_extra-1.1.0
getrandom-0.1.12
getrandom_package-0.1.20
git2-0.10.1
home-0.5.0
humansize-1.1.0
idna-0.2.0
itoa-0.4.4
jobserver-0.1.17
lazy_static-1.4.0
libc-0.2.62
libgit2-sys-0.9.1
libz-sys-1.0.25
log-0.4.8
matches-0.1.8
memchr-2.2.1
memoffset-0.5.1
nodrop-0.1.13
num_cpus-1.10.1
output_vt100-0.1.2
path-slash-0.1.1
percent-encoding-2.1.0
pkg-config-0.3.16
ppv-lite86-0.2.5
pretty_assertions-0.6.1
proc-macro2-1.0.4
quote-1.0.2
rand-0.7.2
rand_chacha-0.2.1
rand_core-0.5.1
rand_hc-0.2.0
rayon-1.2.0
rayon-core-1.6.0
redox_syscall-0.1.56
regex-1.3.1
regex-syntax-0.6.12
remove_dir_all-0.5.2
rustc_tools_util-0.2.0
rustc_version-0.2.3
ryu-1.0.0
same-file-1.0.5
scopeguard-1.0.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.101
serde_derive-1.0.101
serde_json-1.0.40
smallvec-0.6.10
strsim-0.8.0
syn-1.0.5
tempfile-3.1.0
textwrap-0.11.0
thread_local-0.3.6
unicode-bidi-0.3.4
unicode-normalization-0.1.8
unicode-width-0.1.6
unicode-xid-0.2.0
url-2.1.0
vcpkg-0.2.7
vec_map-0.8.1
walkdir-2.2.9
wasi-0.7.0
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="Manage cargo cache ($CARGO_HOME or ~/.cargo/), show sizes and remove directories selectively"
HOMEPAGE="https://github.com/matthiaskrgr/cargo-cache"
SRC_URI="https://github.com/matthiaskrgr/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=virtual/rust-1.31.0"
RDEPEND=""

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
}
