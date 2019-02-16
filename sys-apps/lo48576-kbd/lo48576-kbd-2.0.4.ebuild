# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

SRC_URI=""

DESCRIPTION="Custom console keymaps for @lo48576"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

BDEPEND=""
DEPEND="
	app-arch/gzip
	>=sys-apps/kbd-2.0.4"

src_unpack() {
	mkdir "${S}"
}

src_compile() {
	zcat /usr/share/keymaps/i386/dvorak/dvorak.map.gz \
		/usr/share/keymaps/i386/include/windowkeys.map.gz \
		>dvorak_with_windowkeys.map || die
	gzip --best -k dvorak_with_windowkeys.map || die

	sed -e 's/^\(\s*keycode\s\+58\s*=\s*\)Caps_Lock\s*$/\1Control/' dvorak_with_windowkeys.map \
		>dvorak_with_windowkeys_and_caps_as_ctrl.map || die
	gzip --best -k dvorak_with_windowkeys_and_caps_as_ctrl.map || die
}

src_install() {
	insinto /usr/share/keymaps/lo48576
	doins dvorak_with_windowkeys.map.gz dvorak_with_windowkeys_and_caps_as_ctrl.map.gz
}
