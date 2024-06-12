# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=8

CRATES="
aho-corasick@0.7.10
ansi_term@0.11.0
atty@0.2.14
autocfg@1.0.0
bitflags@1.2.1
block-buffer@0.7.3
block-padding@0.1.5
bstr@0.2.12
byte-tools@0.3.1
byteorder@1.3.4
cfg-if@0.1.10
chrono@0.4.11
chrono-tz@0.5.1
clap@2.33.0
crossbeam-channel@0.4.2
crossbeam-utils@0.7.2
deunicode@0.4.3
digest@0.8.1
doc-comment@0.3.3
dtoa@0.4.5
fake-simd@0.1.2
fnv@1.0.6
generic-array@0.12.3
getrandom@0.1.14
globset@0.4.5
globwalk@0.8.0
heck@0.3.1
hermit-abi@0.1.8
humansize@1.1.0
ignore@0.4.13
itoa@0.4.5
lazy_static@1.4.0
libc@0.2.68
linked-hash-map@0.5.2
log@0.4.8
maplit@1.0.2
maybe-uninit@2.0.0
memchr@2.3.3
num-integer@0.1.42
num-traits@0.2.11
opaque-debug@0.2.3
parse-zoneinfo@0.2.1
percent-encoding@2.1.0
pest@2.1.3
pest_derive@2.1.0
pest_generator@2.1.3
pest_meta@2.1.3
ppv-lite86@0.2.6
proc-macro-error@1.0.2
proc-macro-error-attr@1.0.2
proc-macro2@1.0.9
quote@1.0.3
rand@0.7.3
rand_chacha@0.2.2
rand_core@0.5.1
rand_hc@0.2.0
redox_syscall@0.1.56
regex@1.3.6
regex-syntax@0.6.17
ryu@1.0.3
same-file@1.0.6
serde@1.0.106
serde_json@1.0.51
serde_yaml@0.8.11
sha-1@0.8.2
slug@0.1.4
snafu@0.6.6
snafu-derive@0.6.6
strsim@0.8.0
structopt@0.3.13
structopt-derive@0.4.6
syn@1.0.17
syn-mid@0.5.0
tera@1.2.0
tera-cli@0.4.1
textwrap@0.11.0
thread_local@1.0.1
time@0.1.42
toml@0.5.6
typenum@1.11.2
ucd-trie@0.1.3
unic-char-property@0.9.0
unic-char-range@0.9.0
unic-common@0.9.0
unic-segment@0.9.0
unic-ucd-segment@0.9.0
unic-ucd-version@0.9.0
unicode-segmentation@1.6.0
unicode-width@0.1.7
unicode-xid@0.2.0
vec_map@0.8.1
version_check@0.9.1
walkdir@2.3.1
wasi@0.9.0+wasi-snapshot-preview1
winapi@0.3.8
winapi-i686-pc-windows-gnu@0.4.0
winapi-util@0.1.3
winapi-x86_64-pc-windows-gnu@0.4.0
yaml-rust@0.4.3
"

inherit cargo

DESCRIPTION="Tera CLI for one-off template interpolation from context file / env vars"
HOMEPAGE="https://github.com/guangie88/tera-cli"
SRC_URI="https://github.com/guangie88/tera-cli/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" ${CARGO_CRATE_URIS}"
LICENSE="BSD BSD-2 MIT || ( Apache-2.0 Boost-1.0 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
}
