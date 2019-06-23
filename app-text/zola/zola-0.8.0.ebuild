# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
actix-codec-0.1.2
actix-connect-0.2.0
actix-files-0.1.2
actix-http-0.2.4
actix-router-0.1.5
actix-rt-0.2.3
actix-server-0.5.1
actix-server-config-0.1.1
actix-service-0.4.1
actix-threadpool-0.1.1
actix-utils-0.4.1
actix-web-1.0.2
actix-web-codegen-0.1.2
adler32-1.0.3
aho-corasick-0.7.3
ammonia-2.1.1
ansi_term-0.11.0
arc-swap-0.3.11
arrayvec-0.4.10
atty-0.2.11
autocfg-0.1.4
backtrace-0.3.30
backtrace-sys-0.1.28
base64-0.10.1
bincode-1.1.4
bitflags-1.1.0
block-buffer-0.7.3
block-padding-0.1.4
bstr-0.1.4
build_const-0.2.1
byte-tools-0.3.1
byteorder-1.3.2
bytes-0.4.12
cc-1.0.37
cfg-if-0.1.9
chrono-0.4.6
clap-2.33.0
cloudabi-0.0.3
color_quant-1.0.1
cookie-0.12.0
cookie_store-0.7.0
copyless-0.1.3
core-foundation-0.6.4
core-foundation-sys-0.6.2
crc-1.8.1
crc32fast-1.2.0
crossbeam-channel-0.3.8
crossbeam-deque-0.6.3
crossbeam-deque-0.7.1
crossbeam-epoch-0.7.1
crossbeam-queue-0.1.2
crossbeam-utils-0.6.5
csv-1.0.7
csv-core-0.1.5
ctrlc-3.1.3
deflate-0.7.19
derive_more-0.14.1
derive_more-0.15.0
deunicode-0.4.3
digest-0.8.0
dtoa-0.4.4
either-1.5.2
elasticlunr-rs-2.3.5
encoding-0.2.33
encoding-index-japanese-1.20141219.5
encoding-index-korean-1.20141219.5
encoding-index-simpchinese-1.20141219.5
encoding-index-singlebyte-1.20141219.5
encoding-index-tradchinese-1.20141219.5
encoding_index_tests-0.1.4
encoding_rs-0.8.17
enum-as-inner-0.2.1
error-chain-0.12.1
failure-0.1.5
failure_derive-0.1.5
fake-simd-0.1.2
filetime-0.2.5
flate2-1.0.9
fnv-1.0.6
foreign-types-0.3.2
foreign-types-shared-0.1.1
fs_extra-1.1.0
fsevent-0.4.0
fsevent-sys-2.0.1
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futf-0.1.4
futures-0.1.27
futures-cpupool-0.1.8
generic-array-0.12.0
getopts-0.2.19
gif-0.10.2
glob-0.3.0
globset-0.4.3
globwalk-0.7.1
h2-0.1.24
hashbrown-0.5.0
heck-0.3.1
hostname-0.1.5
html5ever-0.23.0
http-0.1.17
http-body-0.1.0
httparse-1.3.3
humansize-1.1.0
humantime-1.2.0
hyper-0.12.30
hyper-tls-0.3.2
idna-0.1.5
ignore-0.4.7
image-0.21.2
indexmap-1.0.2
inflate-0.4.5
inotify-0.6.1
inotify-sys-0.1.3
iovec-0.1.2
ipconfig-0.2.1
itoa-0.4.4
jpeg-decoder-0.1.15
kernel32-sys-0.2.2
language-tags-0.2.2
lazy_static-1.3.0
lazycell-1.2.1
libc-0.2.58
line-wrap-0.1.1
linked-hash-map-0.5.2
lock_api-0.1.5
lock_api-0.2.0
log-0.4.6
lru-cache-0.1.2
lzw-0.10.0
mac-0.1.1
maplit-1.0.1
markup5ever-0.8.1
matches-0.1.8
memchr-2.2.0
memoffset-0.2.1
mime-0.3.13
mime_guess-2.0.0-alpha.6
miniz-sys-0.1.12
miniz_oxide-0.2.1
miniz_oxide_c_api-0.2.1
mio-0.6.19
mio-extras-2.0.5
mio-uds-0.6.7
miow-0.2.1
native-tls-0.2.3
net2-0.2.33
new_debug_unreachable-1.0.3
nix-0.14.1
nodrop-0.1.13
nom-4.2.3
notify-4.0.12
num-derive-0.2.5
num-integer-0.1.41
num-iter-0.1.39
num-rational-0.2.2
num-traits-0.2.8
num_cpus-1.10.1
numtoa-0.1.0
onig-4.3.2
onig_sys-69.1.0
opaque-debug-0.2.2
openssl-0.10.23
openssl-probe-0.1.2
openssl-sys-0.9.47
owning_ref-0.4.0
parking_lot-0.7.1
parking_lot-0.8.0
parking_lot_core-0.4.0
parking_lot_core-0.5.0
percent-encoding-1.0.1
pest-2.1.1
pest_derive-2.1.0
pest_generator-2.1.0
pest_meta-2.1.1
phf-0.7.24
phf_codegen-0.7.24
phf_generator-0.7.24
phf_shared-0.7.24
pkg-config-0.3.14
plist-0.4.2
png-0.14.1
precomputed-hash-0.1.1
proc-macro2-0.4.30
publicsuffix-1.5.2
pulldown-cmark-0.5.2
quick-error-1.2.2
quote-0.6.12
rand-0.6.5
rand_chacha-0.1.1
rand_core-0.3.1
rand_core-0.4.0
rand_hc-0.1.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
rayon-1.1.0
rayon-core-1.5.0
rdrand-0.4.0
redox_syscall-0.1.54
redox_termios-0.1.1
regex-1.1.7
regex-syntax-0.6.7
remove_dir_all-0.5.2
reqwest-0.9.18
resolv-conf-0.6.2
rust-stemmers-1.1.0
rustc-demangle-0.1.15
rustc_version-0.2.3
ryu-0.2.8
safemem-0.3.0
same-file-1.0.4
sass-rs-0.2.2
sass-sys-0.4.10
schannel-0.1.15
scoped_threadpool-0.1.9
scopeguard-0.3.3
scopeguard-1.0.0
security-framework-0.3.1
security-framework-sys-0.3.1
semver-0.9.0
semver-parser-0.7.0
serde-1.0.92
serde_derive-1.0.92
serde_json-1.0.39
serde_urlencoded-0.5.5
sha-1-0.8.1
sha1-0.6.0
signal-hook-0.1.9
signal-hook-registry-1.0.1
siphasher-0.2.3
slab-0.4.2
slotmap-0.2.1
slug-0.1.4
smallvec-0.6.10
socket2-0.3.9
stable_deref_trait-1.1.1
string-0.2.0
string_cache-0.7.3
string_cache_codegen-0.4.2
string_cache_shared-0.3.0
strsim-0.8.0
strum-0.15.0
strum_macros-0.15.0
syn-0.15.37
synstructure-0.10.2
syntect-3.2.0
tempfile-3.0.8
tendril-0.4.1
tera-1.0.0-beta.10
termcolor-1.0.5
termion-1.5.3
textwrap-0.11.0
thread_local-0.3.6
threadpool-1.7.1
tiff-0.2.2
time-0.1.42
tokio-0.1.21
tokio-buf-0.1.1
tokio-codec-0.1.1
tokio-current-thread-0.1.6
tokio-executor-0.1.7
tokio-io-0.1.12
tokio-reactor-0.1.9
tokio-signal-0.2.7
tokio-sync-0.1.6
tokio-tcp-0.1.3
tokio-threadpool-0.1.14
tokio-timer-0.2.11
tokio-trace-core-0.2.0
tokio-udp-0.1.3
toml-0.4.10
toml-0.5.1
trust-dns-proto-0.7.4
trust-dns-resolver-0.11.1
try-lock-0.2.2
try_from-0.3.2
typenum-1.10.0
ucd-trie-0.1.1
ucd-util-0.1.3
unic-char-property-0.9.0
unic-char-range-0.9.0
unic-common-0.9.0
unic-segment-0.9.0
unic-ucd-segment-0.9.0
unic-ucd-version-0.9.0
unicase-1.4.2
unicase-2.4.0
unicode-bidi-0.3.4
unicode-normalization-0.1.8
unicode-segmentation-1.3.0
unicode-width-0.1.5
unicode-xid-0.1.0
url-1.7.2
utf-8-0.7.5
utf8-ranges-1.0.3
uuid-0.7.4
v_escape-0.7.2
v_escape_derive-0.5.3
v_htmlescape-0.4.3
vcpkg-0.2.6
vec_map-0.8.1
version_check-0.1.5
void-1.0.2
walkdir-2.2.8
want-0.0.6
widestring-0.4.0
winapi-0.2.8
winapi-0.3.7
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.1
winreg-0.6.0
winutil-0.1.1
ws-0.8.1
ws2_32-sys-0.2.1
xml-rs-0.8.0
yaml-rust-0.4.3
"

inherit cargo

DESCRIPTION="A fast static site generator with everything built-in"
HOMEPAGE="https://www.getzola.org"
SRC_URI="https://github.com/getzola/zola/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
