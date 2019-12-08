# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Fast audio loudness scanner & tagger (ReplayGain v2 / R128)"
HOMEPAGE="https://github.com/desbma/r128gain"
SRC_URI="https://github.com/desbma/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="${PYTHON_DEPS}
	>=dev-python/crcmod-1.7[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.28.1[${PYTHON_USEDEP}]
	>=media-libs/mutagen-1.38[${PYTHON_USEDEP}]
	virtual/ffmpeg"
DEPEND="${RDEPEND}"
