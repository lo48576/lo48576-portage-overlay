# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils gnome2-utils

DESCRIPTION="An input method engine for Fcitx"
HOMEPAGE="https://github.com/fcitx/fcitx-skk"
SRC_URI="https://github.com/fcitx/fcitx-skk/archive/${PV}.tar.gz -> fcitx-skk-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="qt5"

DEPEND=">=app-i18n/fcitx-4.2.8
	app-i18n/libskk
	app-i18n/skk-jisyo
	qt5? (
		app-i18n/fcitx-qt5:4
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
