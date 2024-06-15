# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=8

CRATES="
aho-corasick-0.7.10
ansi_term-0.11.0
arrayref-0.3.6
arrayvec-0.5.1
assert_cmd-1.0.1
atty-0.2.14
autocfg-1.0.0
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.10
bstr-0.2.12
byteorder-1.3.4
cfg-if-0.1.10
clap-2.33.0
colored-2.0.0
constant_time_eq-0.1.5
crossbeam-utils-0.7.2
csv-1.1.3
csv-core-0.1.10
difference-2.0.0
dirs-1.0.5
doc-comment-0.3.3
encode_unicode-0.3.6
fuchsia-cprng-0.1.1
getrandom-0.1.14
hermit-abi-0.1.11
itoa-0.4.5
lazy_static-1.4.0
libc-0.2.69
memchr-2.3.3
natord-1.0.9
predicates-1.0.4
predicates-core-1.0.0
predicates-tree-1.0.0
prettytable-rs-0.8.0
rand-0.4.6
rand_core-0.3.1
rand_core-0.4.2
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.4
regex-1.4.1
regex-automata-0.1.9
regex-syntax-0.6.20
remove_dir_all-0.5.2
rust-argon2-0.7.0
ryu-1.0.4
same-file-1.0.6
serde-1.0.106
serde_json-1.0.51
strsim-0.8.0
tempdir-0.3.7
term-0.5.2
textwrap-0.11.0
thread_local-1.0.1
treeline-0.1.0
unicode-width-0.1.7
vec_map-0.8.1
wait-timeout-0.2.0
walkdir-2.3.1
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.3.5
"

inherit cargo

DESCRIPTION="Batch rename utility for developers"
HOMEPAGE="https://github.com/yaa110/nomino"
SRC_URI="https://github.com/yaa110/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
# Prevent portage from trying to fetch bunch of *.crate from mirror despite they are not mirrored.
RESTRICT="mirror"
LICENSE="BSD BSD-2 CC0-1.0 ISC MIT MPL-2.0 || ( Apache-2.0 Boost-1.0 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	cargo_src_install

	dodoc README.md
}
