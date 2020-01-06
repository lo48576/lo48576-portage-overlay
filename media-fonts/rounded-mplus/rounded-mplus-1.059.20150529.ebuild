# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font versionator

MY_PV="$(get_version_component_range 3-)"
MPLUS_VER="$(get_version_component_range 2)"
S_DIR="8/8574"
S_DIR_L="8/8572"
S_DIR_X="8/8573"

DESCRIPTION="Rounded M+ Japanese outline fonts, based on M+ fonts"
HOMEPAGE="http://jikasei.me/font/rounded-mplus/"
SRC_URI="mirror://sourceforge.jp/users/${S_DIR}/${PN}-${MY_PV}.zip
	rounded-l? (
		mirror://sourceforge.jp/users/${S_DIR_L}/${PN/d-m/d-l-m}-${MY_PV}.zip
	)
	rounded-x? (
		mirror://sourceforge.jp/users/${S_DIR_X}/${PN/d-m/d-x-m}-${MY_PV}.zip
	)"

LICENSE="mplus-fonts"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="rounded-l rounded-x"
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}"

FONT_S="${S}"
FONT_SUFFIX="ttf"
DOCS="README_E_Rounded.txt
	README_J_Rounded.txt
	mplus-TESTFLIGHT-${MPLUS_VER}/README_E
	mplus-TESTFLIGHT-${MPLUS_VER}/README_J"
