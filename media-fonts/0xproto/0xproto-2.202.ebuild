# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

MY_PN="0xProto"

DESCRIPTION="A programming font focused on source code legibility"
HOMEPAGE="https://github.com/0xType/0xProto"
SRC_URI="https://github.com/0xType/${MY_PN}/releases/download/${PV}/${MY_PN}_$(ver_rs 1 _ ${PV}).zip"

S="${WORKDIR}"

LICENSE="OSL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="otf"
RESTRICT="mirror"

DEPEND="app-arch/unzip"

FONT_S="${S}/fonts"

src_install() {
	# TTF, OTF, and WOFF2 are available
	FONT_SUFFIX="ttf" font_src_install
	use otf && FONT_SUFFIX="otf" font_src_install
}
