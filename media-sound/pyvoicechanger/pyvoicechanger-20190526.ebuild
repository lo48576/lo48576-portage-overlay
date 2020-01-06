# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1 eapi7-ver git-r3 linux-info

DESCRIPTION="Real time microphone voice changer"
HOMEPAGE="https://github.com/juancarlospaco/pyvoicechanger"
SRC_URI=""
EGIT_REPO_URI="https://github.com/juancarlospaco/pyvoicechanger.git"
EGIT_COMMIT_DATE="$(ver_cut 1 ${PV})"
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

PATCHES=( "${FILESDIR}"/${PV}-fix-setup-py-parent-path.patch )
CONFIG_CHECK="SND_ALOOP"

RDEPEND="${PYTHON_DEPS}
	dev-python/PyQt5[gui,widgets]
	media-sound/sox"
DEPEND="${RDEPEND}"
