# Copyright 2017-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
adler32-1.0.3
aho-corasick-0.6.9
ansi_term-0.11.0
antidote-1.0.0
app_dirs-1.2.1
atty-0.2.11
backtrace-0.3.9
backtrace-sys-0.1.24
base64-0.9.3
bitflags-1.0.4
block-buffer-0.7.0
block-padding-0.1.2
build_const-0.2.1
byte-tools-0.3.0
byteorder-1.2.7
bzip2-0.3.3
bzip2-sys-0.1.6
cc-1.0.25
cfg-if-0.1.6
clap-2.32.0
cloudabi-0.0.3
core-foundation-0.5.1
core-foundation-sys-0.5.1
crc-1.8.1
digest-0.8.0
error-chain-0.12.0
fake-simd-0.1.2
flate2-1.0.4
foreign-types-0.3.2
foreign-types-shared-0.1.1
fs2-0.4.3
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
generic-array-0.12.0
httparse-1.3.3
hyper-0.10.15
hyper-native-tls-0.3.0
idna-0.1.5
language-tags-0.2.2
lazy_static-1.2.0
libc-0.2.43
log-0.3.9
log-0.4.6
matches-0.1.8
md-5-0.8.0
memchr-2.1.1
mime-0.2.6
miniz-sys-0.1.11
miniz_oxide-0.2.0
miniz_oxide_c_api-0.2.0
msdos_time-0.1.6
native-tls-0.2.2
num_cpus-1.8.0
ole32-sys-0.2.0
opaque-debug-0.2.1
openssl-0.10.15
openssl-probe-0.1.2
openssl-sys-0.9.39
percent-encoding-1.0.1
pkg-config-0.3.14
podio-0.1.6
proc-macro2-0.4.20
quote-0.6.9
rand-0.4.3
rand-0.5.5
rand_core-0.2.2
rand_core-0.3.0
redox_syscall-0.1.40
redox_termios-0.1.1
regex-1.0.5
regex-syntax-0.6.2
remove_dir_all-0.5.1
rustc-demangle-0.1.9
safemem-0.3.0
schannel-0.1.14
security-framework-0.2.1
security-framework-sys-0.2.1
serde-1.0.80
serde_derive-1.0.80
sha2-0.8.0
shell32-sys-0.1.2
strsim-0.7.0
syn-0.15.18
tectonic_xdv-0.1.8
tempdir-0.3.7
tempfile-3.0.4
termcolor-1.0.4
termion-1.5.1
textwrap-0.10.0
thread_local-0.3.6
time-0.1.40
toml-0.4.8
traitobject-0.1.0
typeable-0.1.2
typenum-1.10.0
ucd-util-0.1.2
unicase-1.4.2
unicode-bidi-0.3.4
unicode-normalization-0.1.7
unicode-width-0.1.5
unicode-xid-0.1.0
url-1.7.1
utf8-ranges-1.0.2
vcpkg-0.2.6
vec_map-0.8.1
version_check-0.1.5
winapi-0.2.8
winapi-0.3.6
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.1
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.1
xdg-2.1.0
zip-0.4.2
"

inherit cargo

DESCRIPTION="A modernized, complete, embeddable TeX/LaTeX engine"
HOMEPAGE="https://tectonic-typesetting.github.io/"
SRC_URI="https://github.com/tectonic-typesetting/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
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

	dodoc CHANGELOG.md README.md
}
