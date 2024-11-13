# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

MY_PV="${PV}"
MY_P="${PN}-v${MY_PV}"

DESCRIPTION="Momiage Mono, coding font for sidelock lovers!"
HOMEPAGE="https://monaspace.githubnext.com/"
SRC_URI="https://github.com/githubnext/${PN}/releases/download/v${MY_PV}/${MY_P}.zip"

S="${WORKDIR}"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"

src_install() {
	FONT_S="${S}/${MY_P}/fonts/otf" FONT_SUFFIX="otf" font_src_install
	FONT_S="${S}/${MY_P}/fonts/variable" FONT_SUFFIX="ttf" font_src_install
}
