# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
aho-corasick-0.7.8
ansi_term-0.11.0
arrayref-0.3.6
arrayvec-0.5.1
atty-0.2.14
autocfg-0.1.7
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.10
block-buffer-0.7.3
block-padding-0.1.5
bstr-0.2.11
byte-tools-0.3.1
bytecount-0.5.1
byteorder-1.3.4
c2-chacha-0.2.3
cc-1.0.50
cfg-if-0.1.10
clap-2.33.0
constant_time_eq-0.1.5
crossbeam-channel-0.4.0
crossbeam-deque-0.7.2
crossbeam-epoch-0.8.0
crossbeam-queue-0.2.1
crossbeam-utils-0.7.0
digest-0.8.1
dirs-2.0.2
dirs-sys-0.3.4
dtoa-0.4.5
either-1.5.3
encoding_rs-0.8.22
encoding_rs_io-0.1.7
env_logger-0.7.1
fake-simd-0.1.2
fnv-1.0.6
generic-array-0.12.3
getrandom-0.1.14
git2-0.11.0
globset-0.4.4
grep-matcher-0.1.3
grep-searcher-0.1.6
half-1.4.1
handlebars-3.0.1
hermit-abi-0.1.6
hex-0.4.1
humantime-1.3.0
idna-0.2.0
ignore-0.4.11
itoa-0.4.5
jobserver-0.1.21
kernel32-sys-0.2.2
lazy_static-1.4.0
libc-0.2.66
libgit2-sys-0.10.0
libz-sys-1.0.25
linked-hash-map-0.5.2
log-0.4.8
maplit-1.0.2
matches-0.1.8
memchr-2.3.2
memmap-0.7.0
memoffset-0.5.3
num_cpus-1.12.0
opaque-debug-0.2.3
percent-encoding-2.1.0
pest-2.1.2
pest_derive-2.1.0
pest_generator-2.1.1
pest_meta-2.1.2
pkg-config-0.3.17
ppv-lite86-0.2.6
proc-macro2-1.0.8
quick-error-1.2.3
quote-1.0.2
rand-0.7.3
rand_chacha-0.2.1
rand_core-0.5.1
rand_hc-0.2.0
rayon-1.3.0
rayon-core-1.7.0
redox_syscall-0.1.56
redox_users-0.3.4
regex-1.3.4
regex-syntax-0.6.14
remove_dir_all-0.5.2
rust-argon2-0.7.0
rustc_version-0.2.3
ryu-1.0.2
same-file-1.0.6
scopeguard-1.0.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.104
serde_cbor-0.11.1
serde_derive-1.0.104
serde_json-1.0.48
serde_yaml-0.8.11
sha-1-0.8.2
smallvec-1.2.0
strsim-0.8.0
syn-1.0.14
tempfile-3.1.0
term_size-0.3.1
termcolor-1.1.0
textwrap-0.11.0
thread_local-1.0.1
toml-0.5.6
typenum-1.11.2
ucd-trie-0.1.2
unicode-bidi-0.3.4
unicode-normalization-0.1.12
unicode-width-0.1.7
unicode-xid-0.2.0
url-2.1.1
vcpkg-0.2.8
vec_map-0.8.1
walkdir-2.3.1
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.3
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.4.3
"

inherit cargo

DESCRIPTION="Count code, quickly"
HOMEPAGE="https://tokei.rs"
SRC_URI="https://github.com/XAMPPRocky/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
}