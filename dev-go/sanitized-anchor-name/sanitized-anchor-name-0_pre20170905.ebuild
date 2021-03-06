# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
EGO_PN=github.com/shurcooL/sanitized_anchor_name

if [[ ${PV} = *9999* ]]; then
	inherit golang-vcs
else
	KEYWORDS="~amd64 ~arm ~arm64"
	EGIT_COMMIT=86672fcb3f950f35f2e675df2240550f2a50762f
	SRC_URI="https://${EGO_PN}/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"
	inherit golang-vcs-snapshot
fi
inherit golang-build

DESCRIPTION="A Go function to provide sanitized anchor names"
HOMEPAGE="https://github.com/shurcooL/sanitized_anchor_name"
LICENSE="BSD"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND=""
