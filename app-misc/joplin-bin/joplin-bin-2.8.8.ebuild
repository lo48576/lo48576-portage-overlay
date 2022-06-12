# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop udev

DESCRIPTION="Note taking and to-do application with synchronization capabilities"
HOMEPAGE="https://github.com/laurent22/joplin"
SRC_URI="https://github.com/laurent22/joplin/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/laurent22/joplin/releases/download/v${PV}/Joplin-${PV}.AppImage -> ${P}.AppImage"
RESTRICT="mirror"
# About `all-rights-reserved`: Currently logos and icons are all rights reserved.
# See <https://github.com/laurent22/joplin/blob/dev/LICENSE>.
LICENSE="MIT all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""

S="${WORKDIR}/joplin-${PV}"
QA_PRESTRIPPED="usr/bin/joplin"

src_install() {
	newbin ${DISTDIR}/${P}.AppImage joplin
	domenu ${FILESDIR}/joplin.desktop
	newicon Assets/JoplinIcon.svg joplin.svg
	newicon Assets/SquareIcon1024.png joplin.png
	newicon -s 512 Assets/SquareIcon512.png joplin.png
}
