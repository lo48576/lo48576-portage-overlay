# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.0

EAPI=8

CRATES="
	aho-corasick-0.7.18
	ansi_term-0.11.0
	ansi_term-0.12.1
	atty-0.2.14
	autocfg-1.0.1
	bitflags-1.2.1
	camino-1.0.4
	cargo-platform-0.1.1
	cargo_metadata-0.13.1
	cc-1.0.68
	cfg-if-1.0.0
	chrono-0.4.19
	clap-2.33.3
	crossbeam-channel-0.5.1
	crossbeam-deque-0.8.0
	crossbeam-epoch-0.9.5
	crossbeam-utils-0.8.5
	ctor-0.1.20
	diff-0.1.12
	dirs-next-2.0.0
	dirs-sys-next-0.1.2
	either-1.6.1
	form_urlencoded-1.0.1
	fs_extra-1.2.0
	getrandom-0.2.3
	git2-0.13.20
	hermit-abi-0.1.18
	home-0.5.3
	humansize-1.1.1
	idna-0.2.3
	itoa-0.4.7
	jobserver-0.1.22
	lazy_static-1.4.0
	libc-0.2.97
	libgit2-sys-0.12.21+1.1.0
	libz-sys-1.1.3
	log-0.4.14
	matches-0.1.8
	memchr-2.4.0
	memoffset-0.6.4
	num-integer-0.1.44
	num-traits-0.2.14
	num_cpus-1.13.0
	output_vt100-0.1.2
	path-slash-0.1.4
	percent-encoding-2.1.0
	pest-2.1.3
	pkg-config-0.3.19
	ppv-lite86-0.2.10
	pretty_assertions-0.7.2
	proc-macro2-1.0.27
	quote-1.0.9
	rand-0.8.4
	rand_chacha-0.3.1
	rand_core-0.6.3
	rand_hc-0.3.1
	rayon-1.5.1
	rayon-core-1.9.1
	redox_syscall-0.2.9
	redox_users-0.4.0
	regex-1.5.4
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	remove_dir_all-0.7.0
	rustc_tools_util-0.2.0
	ryu-1.0.5
	same-file-1.0.6
	scopeguard-1.1.0
	semver-0.11.0
	semver-parser-0.10.2
	serde-1.0.126
	serde_derive-1.0.126
	serde_json-1.0.64
	strsim-0.8.0
	syn-1.0.73
	tempfile-3.2.0
	term_size-0.3.2
	textwrap-0.11.0
	time-0.1.44
	tinyvec-1.2.0
	tinyvec_macros-0.1.0
	ucd-trie-0.1.3
	unicode-bidi-0.3.5
	unicode-normalization-0.1.19
	unicode-width-0.1.8
	unicode-xid-0.2.2
	url-2.2.2
	vcpkg-0.2.13
	vec_map-0.8.2
	walkdir-2.3.2
	wasi-0.10.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="Manage cargo cache, show sizes and remove directories selectively"
HOMEPAGE="https://github.com/matthiaskrgr/cargo-cache"
SRC_URI="https://github.com/matthiaskrgr/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" $(cargo_crate_uris)"
# Prevent portage from trying to fetch bunch of *.crate from mirror despite they are not mirrored.
RESTRICT="mirror"
LICENSE="MIT || ( Apache-2.0 Boost-1.0 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
}
