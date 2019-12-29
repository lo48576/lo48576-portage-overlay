# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
adler32-1.0.3
aho-corasick-0.6.9
ansi_term-0.11.0
arrayvec-0.4.10
atty-0.2.11
autocfg-0.1.1
backtrace-0.3.13
backtrace-sys-0.1.28
bitflags-1.0.4
build_const-0.2.1
bytesize-1.0.0
cargo-0.32.0
cc-1.0.28
cfg-if-0.1.6
clap-2.32.0
cloudabi-0.0.3
commoncrypto-0.2.0
commoncrypto-sys-0.2.0
core-foundation-0.6.3
core-foundation-sys-0.6.2
crates-io-0.20.0
crc-1.8.1
crc32fast-1.1.2
crossbeam-channel-0.3.4
crossbeam-epoch-0.7.0
crossbeam-utils-0.5.0
crossbeam-utils-0.6.3
crypto-hash-0.3.3
curl-0.4.19
curl-sys-0.4.15
docopt-1.0.2
env_logger-0.5.13
env_logger-0.6.0
failure-0.1.3
failure_derive-0.1.3
filetime-0.2.4
flate2-1.0.6
fnv-1.0.6
foreign-types-0.3.2
foreign-types-shared-0.1.1
fs2-0.4.3
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
fwdansi-1.0.1
git2-0.7.5
git2-curl-0.8.2
glob-0.2.11
globset-0.4.2
hex-0.3.2
home-0.3.3
humantime-1.2.0
idna-0.1.5
ignore-0.4.5
itoa-0.4.3
jobserver-0.1.12
kernel32-sys-0.2.2
lazy_static-1.2.0
lazycell-1.2.1
libc-0.2.45
libgit2-sys-0.7.11
libnghttp2-sys-0.1.1
libssh2-sys-0.2.11
libz-sys-1.0.25
lock_api-0.1.5
log-0.4.6
matches-0.1.8
memchr-2.1.2
memoffset-0.2.1
miniz-sys-0.1.11
miniz_oxide-0.2.0
miniz_oxide_c_api-0.2.0
miow-0.3.3
nodrop-0.1.13
num_cpus-1.9.0
opener-0.3.2
openssl-0.10.16
openssl-probe-0.1.2
openssl-sys-0.9.40
owning_ref-0.4.0
parking_lot-0.7.0
parking_lot_core-0.4.0
percent-encoding-1.0.1
pkg-config-0.3.14
proc-macro2-0.4.24
quick-error-1.2.2
quote-0.6.10
rand-0.6.1
rand_chacha-0.1.0
rand_core-0.3.0
rand_hc-0.1.0
rand_isaac-0.1.1
rand_pcg-0.1.1
rand_xorshift-0.1.0
redox_syscall-0.1.44
redox_termios-0.1.1
regex-1.1.0
regex-syntax-0.6.4
remove_dir_all-0.5.1
rustc-demangle-0.1.11
rustc-workspace-hack-1.0.0
rustc_version-0.2.3
rustfix-0.4.4
ryu-0.2.7
same-file-1.0.4
schannel-0.1.14
scopeguard-0.3.3
semver-0.9.0
semver-parser-0.7.0
serde-1.0.82
serde_derive-1.0.82
serde_ignored-0.0.4
serde_json-1.0.33
shell-escape-0.1.4
smallvec-0.6.7
socket2-0.3.8
stable_deref_trait-1.1.1
strsim-0.7.0
syn-0.15.23
synstructure-0.10.1
tabwriter-1.1.0
tar-0.4.20
tempfile-3.0.5
termcolor-1.0.4
termion-1.5.1
textwrap-0.10.0
thread_local-0.3.6
toml-0.4.10
ucd-util-0.1.3
unicode-bidi-0.3.4
unicode-normalization-0.1.7
unicode-width-0.1.5
unicode-xid-0.1.0
unreachable-1.0.0
url-1.7.2
utf8-ranges-1.0.2
vcpkg-0.2.6
vec_map-0.8.1
version_check-0.1.5
void-1.0.2
walkdir-2.2.7
winapi-0.2.8
winapi-0.3.6
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.1
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.1
"

inherit cargo

DESCRIPTION="Cargo subcommand for displaying when dependencies are out of date"
HOMEPAGE="https://github.com/kbknapp/cargo-outdated"
SRC_URI="https://github.com/kbknapp/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
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
}
