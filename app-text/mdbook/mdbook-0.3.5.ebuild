# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.7.6
ammonia-3.0.0
ansi_term-0.11.0
atty-0.2.13
autocfg-0.1.7
backtrace-0.3.40
backtrace-sys-0.1.32
base64-0.9.3
bit-set-0.5.1
bit-vec-0.5.1
bitflags-1.2.1
block-buffer-0.7.3
block-padding-0.1.5
byte-tools-0.3.1
byteorder-1.3.2
bytes-0.4.12
c2-chacha-0.2.3
cc-1.0.47
cfg-if-0.1.10
chrono-0.4.9
clap-2.33.0
cloudabi-0.0.3
ctor-0.1.12
darling-0.8.6
darling_core-0.8.6
darling_macro-0.8.6
difference-2.0.0
digest-0.8.1
either-1.5.3
elasticlunr-rs-2.3.6
env_logger-0.6.2
error-chain-0.12.1
failure-0.1.6
failure_derive-0.1.6
fake-simd-0.1.2
filetime-0.2.8
fnv-1.0.6
fsevent-0.4.0
fsevent-sys-2.0.1
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futf-0.1.4
generic-array-0.12.3
getopts-0.2.21
getrandom-0.1.13
getrandom_package-0.1.20
gitignore-1.0.6
glob-0.2.11
handlebars-2.0.2
hashbrown-0.5.0
heck-0.3.1
hermit-abi-0.1.3
html5ever-0.23.0
html5ever-0.24.1
httparse-1.3.4
humantime-1.3.0
hyper-0.10.16
ident_case-1.0.1
idna-0.1.5
idna-0.2.0
inotify-0.6.1
inotify-sys-0.1.3
iovec-0.1.4
iron-0.6.1
is-match-0.1.0
itertools-0.8.1
itoa-0.4.4
kernel32-sys-0.2.2
language-tags-0.2.2
lazy_static-1.4.0
lazycell-1.2.1
libc-0.2.65
log-0.3.9
log-0.4.8
mac-0.1.1
maplit-1.0.2
markup5ever-0.8.1
markup5ever-0.9.0
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.2.1
mime-0.2.6
mime_guess-1.8.7
mio-0.6.19
mio-extras-2.0.5
miow-0.2.1
modifier-0.1.0
mount-0.4.0
net2-0.2.33
new_debug_unreachable-1.0.3
notify-4.0.14
num-integer-0.1.41
num-traits-0.2.8
num_cpus-1.11.0
opaque-debug-0.2.3
open-1.3.2
output_vt100-0.1.2
percent-encoding-1.0.1
percent-encoding-2.1.0
pest-2.1.2
pest_derive-2.1.0
pest_generator-2.1.1
pest_meta-2.1.2
phf-0.7.24
phf_codegen-0.7.24
phf_generator-0.7.24
phf_shared-0.7.24
plugin-0.2.6
ppv-lite86-0.2.6
precomputed-hash-0.1.1
pretty_assertions-0.6.1
proc-macro2-0.4.30
proc-macro2-1.0.6
pulldown-cmark-0.6.1
quick-error-1.2.2
quote-0.6.13
quote-1.0.2
rand-0.6.5
rand-0.7.2
rand_chacha-0.1.1
rand_chacha-0.2.1
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.1.0
rand_hc-0.2.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
rdrand-0.4.0
redox_syscall-0.1.56
regex-1.3.1
regex-syntax-0.6.12
remove_dir_all-0.5.2
rustc-demangle-0.1.16
ryu-1.0.2
safemem-0.3.3
same-file-1.0.5
select-0.4.3
sequence_trie-0.3.6
serde-1.0.102
serde_derive-1.0.102
serde_json-1.0.41
sha-1-0.8.1
shlex-0.1.1
siphasher-0.2.3
slab-0.4.2
smallvec-0.6.13
staticfile-0.5.0
string_cache-0.7.5
string_cache_codegen-0.4.4
string_cache_shared-0.3.0
strsim-0.8.0
strum-0.15.0
strum_macros-0.15.0
syn-0.15.44
syn-1.0.8
synstructure-0.12.3
tempfile-3.1.0
tendril-0.4.1
termcolor-1.0.5
textwrap-0.11.0
thread_local-0.3.6
time-0.1.42
toml-0.5.5
toml-query-0.9.2
toml-query_derive-0.9.0
traitobject-0.1.0
typeable-0.1.2
typemap-0.3.3
typenum-1.11.2
ucd-trie-0.1.2
unicase-1.4.2
unicase-2.5.1
unicode-bidi-0.3.4
unicode-normalization-0.1.9
unicode-segmentation-1.6.0
unicode-width-0.1.6
unicode-xid-0.1.0
unicode-xid-0.2.0
unsafe-any-0.4.2
url-1.7.2
url-2.1.0
utf-8-0.7.5
vec_map-0.8.1
version_check-0.1.5
walkdir-2.2.9
wasi-0.7.0
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.2
ws-0.9.1
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="Creates a book from markdown files"
HOMEPAGE="https://github.com/rust-lang/mdBook"
SRC_URI="https://github.com/rust-lang-nursery/mdBook/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_prepare() {
	eapply_user

	mv ../mdBook-${PV}/{.,}* .
}

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
}
