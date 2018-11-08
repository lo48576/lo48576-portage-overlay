# Copyright 2017-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.6.8
ammonia-1.2.0
ansi_term-0.11.0
atty-0.2.11
backtrace-0.3.9
backtrace-sys-0.1.24
base64-0.6.0
bit-set-0.4.0
bit-vec-0.4.4
bitflags-0.7.0
bitflags-0.9.1
bitflags-1.0.4
byteorder-1.2.6
bytes-0.4.10
cc-1.0.25
cfg-if-0.1.6
chrono-0.4.6
clap-2.32.0
cloudabi-0.0.3
crossbeam-utils-0.5.0
debug_unreachable-0.1.1
difference-2.0.0
either-1.5.0
elasticlunr-rs-2.3.3
env_logger-0.5.13
error-chain-0.12.0
filetime-0.2.1
fsevent-0.2.17
fsevent-sys-0.1.6
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futf-0.1.4
futures-0.1.25
getopts-0.2.18
handlebars-1.0.5
html5ever-0.18.0
html5ever-0.22.3
httparse-1.3.3
humantime-1.1.1
hyper-0.10.13
idna-0.1.5
inotify-0.6.1
inotify-sys-0.1.3
iovec-0.1.2
iron-0.6.0
is-match-0.1.0
itertools-0.7.8
itoa-0.4.3
kernel32-sys-0.2.2
language-tags-0.2.2
lazy_static-0.2.11
lazy_static-1.1.0
lazycell-1.2.0
libc-0.2.43
lock_api-0.1.4
log-0.3.9
log-0.4.5
mac-0.1.1
maplit-1.0.1
markup5ever-0.3.2
markup5ever-0.7.3
matches-0.1.8
mdbook-0.2.2
memchr-2.1.0
mime-0.2.6
mime_guess-1.8.6
mio-0.6.16
mio-extras-2.0.5
miow-0.2.1
modifier-0.1.0
mount-0.4.0
net2-0.2.33
new_debug_unreachable-1.0.1
notify-4.0.6
num-integer-0.1.39
num-traits-0.2.6
num_cpus-1.8.0
open-1.2.2
owning_ref-0.3.3
parking_lot-0.6.4
parking_lot_core-0.3.1
percent-encoding-1.0.1
pest-1.0.6
pest_derive-1.0.8
phf-0.7.23
phf_codegen-0.7.23
phf_generator-0.7.23
phf_shared-0.7.23
plugin-0.2.6
precomputed-hash-0.1.1
pretty_assertions-0.5.1
proc-macro2-0.3.8
proc-macro2-0.4.20
pulldown-cmark-0.1.2
pulldown-cmark-to-cmark-1.1.0
quick-error-1.2.2
quote-0.3.15
quote-0.5.2
quote-0.6.8
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
rustc-serialize-0.3.24
rustc_version-0.2.3
ryu-0.2.6
safemem-0.2.0
same-file-1.0.3
scopeguard-0.3.3
select-0.4.2
semver-0.9.0
semver-parser-0.7.0
sequence_trie-0.3.5
serde-1.0.80
serde_derive-1.0.80
serde_json-1.0.32
sha1-0.6.0
shlex-0.1.1
siphasher-0.2.3
slab-0.4.1
smallvec-0.6.5
stable_deref_trait-1.1.1
staticfile-0.5.0
string_cache-0.6.2
string_cache-0.7.3
string_cache_codegen-0.4.1
string_cache_shared-0.3.0
strsim-0.7.0
strum-0.9.0
strum_macros-0.9.1
syn-0.11.11
syn-0.13.11
syn-0.14.9
syn-0.15.12
synom-0.11.3
tempfile-3.0.4
tendril-0.3.1
tendril-0.4.0
termcolor-1.0.4
termion-1.5.1
textwrap-0.10.0
thread_local-0.3.6
time-0.1.40
tokio-executor-0.1.5
tokio-io-0.1.9
tokio-reactor-0.1.6
toml-0.4.8
toml-query-0.7.0
traitobject-0.1.0
typeable-0.1.2
typemap-0.3.3
ucd-util-0.1.1
unicase-1.4.2
unicode-bidi-0.3.4
unicode-normalization-0.1.7
unicode-width-0.1.5
unicode-xid-0.0.4
unicode-xid-0.1.0
unreachable-0.1.1
unreachable-1.0.0
unsafe-any-0.4.2
url-1.7.1
utf-8-0.7.4
utf8-ranges-1.0.1
vec_map-0.8.1
version_check-0.1.5
void-1.0.2
walkdir-2.2.5
winapi-0.2.8
winapi-0.3.6
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.1
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.1
ws-0.7.9
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="Create books from markdown files"
HOMEPAGE="https://github.com/rust-lang-nursery/mdBook"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	cargo_src_install

	dodoc README.md
}
