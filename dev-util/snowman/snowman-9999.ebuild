# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 cmake-utils

DESCRIPTION="A native code to C/C++ decompiler"
HOMEPAGE="https://derevenets.com/"
EGIT_REPO_URI="https://github.com/yegord/snowman.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-qt/qtcore:5 dev-qt/qtwidgets:5 dev-libs/boost"
RDEPEND="${DEPEND}"

CMAKE_USE_DIR="${S}/src"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
		-DLIB_INSTALL_DIR=$(get_libdir)
	)
	cmake-utils_src_configure mycmakeargs
}
