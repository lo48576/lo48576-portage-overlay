# Copyright 2017-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.6.4
ansi_term-0.10.2
atty-0.2.3
bitflags-0.9.1
bitflags-1.0.1
cargo_metadata-0.2.3
clap-2.28.0
clippy-0.0.175
clippy_lints-0.0.175
dtoa-0.4.2
either-1.4.0
env_logger-0.4.3
getopts-0.2.15
idna-0.1.4
if_chain-0.1.2
itertools-0.6.5
itoa-0.3.4
kernel32-sys-0.2.2
lazy_static-0.2.11
libc-0.2.34
log-0.3.8
matches-0.1.6
memchr-2.0.1
num-traits-0.1.41
percent-encoding-1.0.1
pulldown-cmark-0.0.15
quine-mc_cluskey-0.2.4
quote-0.3.15
redox_syscall-0.1.32
redox_termios-0.1.1
regex-0.2.3
regex-syntax-0.4.1
semver-0.6.0
semver-parser-0.7.0
serde-1.0.23
serde_derive-1.0.23
serde_derive_internals-0.17.0
serde_json-1.0.7
shlex-0.1.1
skim-0.3.2
strsim-0.6.0
syn-0.11.11
synom-0.11.3
termion-1.5.1
textwrap-0.9.0
thread_local-0.3.4
time-0.1.38
toml-0.4.5
unicode-bidi-0.3.4
unicode-normalization-0.1.5
unicode-width-0.1.4
unicode-xid-0.0.4
unreachable-1.0.0
url-1.6.0
utf8-ranges-1.0.0
utf8parse-0.1.0
vec_map-0.8.0
void-1.0.2
winapi-0.2.8
winapi-build-0.1.1
"

inherit bash-completion-r1 cargo

DESCRIPTION="Fuzzy Finder in rust!"
HOMEPAGE="https://github.com/lotabout/skim"
SRC_URI="https://github.com/lotabout/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="bash-completion fish-completion zsh-completion"

DEPEND=""
RDEPEND=""

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
	dodoc "${S}/shell/key-bindings.bash" "${S}/shell/key-bindings.zsh"

	use bash-completion &&
		newbashcomp "${S}/shell/completion.bash" rg

	if use fish-completion ; then
		insinto /usr/share/fish/vendor_completions.d
		mv "${S}/shell/completion.fish" skim.fish
		doins skim.fish
	fi

	if use zsh-completion ; then
		insinto /usr/share/zsh/site-functions
		mv "${S}/shell/completion.zsh" _skim
		doins _skim
	fi
}
