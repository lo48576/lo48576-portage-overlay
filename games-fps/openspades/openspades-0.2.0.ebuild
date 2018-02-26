# Copyright 2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils gnome2-utils xdg-utils

DESCRIPTION="Compatible client of Ace of Spades 0.75"
HOMEPAGE="http://openspades.yvt.jp/"
SRC_URI="https://github.com/yvt/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-util/cmake
	net-misc/curl[ssl]
	virtual/pkgconfig
	x11-misc/xdg-utils"
RDEPEND="
	media-libs/freealut
	media-libs/freetype
	media-libs/glew
	media-libs/libsdl2
	media-libs/opusfile
	media-libs/sdl2-image"

pkg_postinst() {
	xdg_desktop_database_update
	gnome2_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	gnome2_icon_cache_update
}
