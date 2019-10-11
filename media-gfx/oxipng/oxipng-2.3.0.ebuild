# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
adler32-1.0.4
ansi_term-0.11.0
arrayvec-0.4.11
atty-0.2.13
autocfg-0.1.6
bit-vec-0.6.1
bitflags-1.2.0
build_const-0.2.1
byteorder-1.3.2
cc-1.0.45
cfg-if-0.1.10
clap-2.33.0
cloudflare-zlib-0.2.5
cloudflare-zlib-sys-0.2.0
crc-1.8.1
crc32fast-1.2.0
crossbeam-deque-0.7.1
crossbeam-epoch-0.7.2
crossbeam-queue-0.1.2
crossbeam-utils-0.6.6
deflate-0.7.20
either-1.5.3
glob-0.3.0
image-0.22.3
inflate-0.4.5
itertools-0.8.0
lazy_static-1.4.0
libc-0.2.62
memoffset-0.5.1
miniz_oxide-0.3.3
nodrop-0.1.13
num-integer-0.1.41
num-iter-0.1.39
num-rational-0.2.2
num-traits-0.2.8
num_cpus-1.10.1
png-0.15.0
rayon-1.2.0
rayon-core-1.6.0
rgb-0.8.14
rustc_version-0.2.3
scopeguard-1.0.0
semver-0.9.0
semver-parser-0.7.0
strsim-0.8.0
textwrap-0.11.0
typed-arena-1.6.1
unicode-width-0.1.6
vec_map-0.8.1
wild-2.0.2
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
zopfli-0.4.0
"

inherit cargo

DESCRIPTION="A lossless PNG compression optimizer"
HOMEPAGE="https://github.com/shssoichiro/oxipng"
SRC_URI="https://github.com/shssoichiro/oxipng/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	cargo_src_install --path .
}
