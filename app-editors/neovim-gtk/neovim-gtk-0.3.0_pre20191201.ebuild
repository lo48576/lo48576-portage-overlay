# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.2.0

EAPI=8

CRATES="
aho-corasick-0.7.6
ansi_term-0.11.0
arrayref-0.3.5
arrayvec-0.5.1
atk-0.7.0
atk-sys-0.9.0
atty-0.2.13
autocfg-0.1.7
backtrace-0.3.40
backtrace-sys-0.1.32
base-x-0.2.6
base64-0.10.1
bitflags-1.2.1
blake2b_simd-0.5.9
build-version-0.1.1
bumpalo-2.6.0
byteorder-1.3.2
c2-chacha-0.2.3
cairo-rs-0.7.1
cairo-sys-rs-0.9.0
cc-1.0.47
cfg-if-0.1.10
clap-2.33.0
cloudabi-0.0.3
constant_time_eq-0.1.4
crossbeam-utils-0.6.6
dirs-2.0.2
dirs-sys-0.3.4
discard-1.0.4
env_logger-0.7.1
failure-0.1.6
failure_derive-0.1.6
fnv-1.0.6
fragile-0.3.0
fuchsia-cprng-0.1.1
gdk-0.11.0
gdk-pixbuf-0.7.0
gdk-pixbuf-sys-0.9.0
gdk-sys-0.9.0
getrandom-0.1.13
gio-0.7.0
gio-sys-0.9.0
glib-0.8.2
glib-sys-0.9.0
gobject-sys-0.9.0
gtk-0.7.0
gtk-sys-0.9.0
htmlescape-0.3.1
humantime-1.3.0
itoa-0.4.4
lazy_static-1.4.0
libc-0.2.66
log-0.4.8
memchr-2.2.1
neovim-lib-0.6.1
num-traits-0.2.10
pango-0.7.0
pango-sys-0.9.0
pangocairo-0.8.0
pangocairo-sys-0.10.0
percent-encoding-1.0.1
phf-0.8.0
phf_codegen-0.8.0
phf_generator-0.8.0
phf_shared-0.8.0
pkg-config-0.3.17
ppv-lite86-0.2.6
proc-macro2-1.0.6
quick-error-1.2.2
quote-1.0.2
rand-0.7.2
rand_chacha-0.2.1
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.2.0
rand_os-0.1.3
rand_pcg-0.2.1
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.1
regex-1.3.1
regex-syntax-0.6.12
rmp-0.8.8
rmpv-0.4.2
rust-argon2-0.5.1
rustc-demangle-0.1.16
rustc_version-0.2.3
ryu-1.0.2
semver-0.9.0
semver-parser-0.7.0
serde-1.0.103
serde_bytes-0.11.2
serde_derive-1.0.103
serde_json-1.0.42
sha1-0.6.0
siphasher-0.3.1
stdweb-0.4.20
stdweb-derive-0.5.3
stdweb-internal-macros-0.2.9
stdweb-internal-runtime-0.1.5
strsim-0.8.0
syn-1.0.9
synstructure-0.12.3
termcolor-1.0.5
textwrap-0.11.0
thread_local-0.3.6
toml-0.5.5
unicode-segmentation-1.6.0
unicode-width-0.1.6
unicode-xid-0.2.0
unix-daemonize-0.1.2
unix_socket-0.5.0
vec_map-0.8.1
wasi-0.7.0
wasm-bindgen-0.2.55
wasm-bindgen-backend-0.2.55
wasm-bindgen-macro-0.2.55
wasm-bindgen-macro-support-0.2.55
wasm-bindgen-shared-0.2.55
whoami-0.6.0
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.2
winres-0.1.11
"

inherit cargo gnome2-utils

DESCRIPTION="GTK UI for neovim"
HOMEPAGE="https://github.com/daa84/neovim-gtk"
if [[ ${PV} == *_pre* ]] ; then
	EGIT_REPO_URI="https://github.com/daa84/neovim-gtk.git"
	EGIT_COMMIT_DATE="$(ver_cut 5 ${PV})"
	inherit git-r3

	SRC_URI="$(cargo_crate_uris ${CRATES})"
else
	SRC_URI="https://github.com/daa84/neovim-gtk/archive/v${PV}.tar.gz -> ${P}.tar.gz
		$(cargo_crate_uris ${CRATES})"
	KEYWORDS="~amd64 ~x86"
fi
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

src_test() {
	cargo test || die "tests failed"
}

src_unpack() {
	if [[ ${PV} == *_pre* ]] ; then
		git-r3_src_unpack
	fi
	cargo_src_unpack
}

src_compile() {
	cargo_src_compile
	sed -i "s|Exec=nvim-gtk|Exec=${EPREFIX}/usr/bin/nvim-gtk|" desktop/org.daa.NeovimGtk.desktop \
		|| die "desktop/org.daa.NeovimGtk.desktop is failed"
}

src_install() {
	emake PREFIX=${ED}usr install-resources
	cargo_src_install
	dodoc README.md
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
