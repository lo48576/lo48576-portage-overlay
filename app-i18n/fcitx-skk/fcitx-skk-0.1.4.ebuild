# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils gnome2-utils

DESCRIPTION="An input method engine for Fcitx"
HOMEPAGE="https://github.com/fcitx/fcitx-skk"
SRC_URI="https://github.com/fcitx/fcitx-skk/archive/0.1.4.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="qt5"

DEPEND=">=app-i18n/fcitx-4.2.8
	app-i18n/libskk
	app-i18n/skk-jisyo
	qt5? (
		dev-qt/qtcore:5
		dev-qt/qtgui:5=
		dev-qt/qtwidgets:5
	)"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		-DENABLE_QT=$(usex qt5)
	)
	cmake-utils_src_configure
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
