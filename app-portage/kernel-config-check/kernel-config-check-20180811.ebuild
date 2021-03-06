# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{6,7,8} )

inherit eapi7-ver git-r3 python-single-r1

DESCRIPTION="Kernel config checker"
HOMEPAGE="https://gist.github.com/mrueg/cd19a20d2e712f61d2ea"
SRC_URI=""
EGIT_REPO_URI="https://gist.github.com/cd19a20d2e712f61d2ea.git"
EGIT_COMMIT_DATE="$(ver_cut 1 ${PV})"
RESTRICT="mirror"
LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	sys-apps/portage"
DEPEND="${RDEPEND}"

src_install() {
	dobin "${S}/kernel-config-check.py"
}
