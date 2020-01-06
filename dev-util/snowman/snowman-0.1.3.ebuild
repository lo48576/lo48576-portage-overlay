# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vcs-snapshot cmake-utils

DESCRIPTION="A native code to C/C++ decompiler"
HOMEPAGE="https://derevenets.com/"
SRC_URI="https://github.com/yegord/snowman/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~x86"
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
