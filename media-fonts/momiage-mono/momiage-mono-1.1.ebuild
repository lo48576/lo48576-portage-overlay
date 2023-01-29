# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

MY_P="MomiageMono"
VER_DATE=20221222
MY_V="${PV}-${VER_DATE}"

DESCRIPTION="Momiage Mono, coding font for sidelock lovers!"
HOMEPAGE="https://github.com/kb10uy/MomiageMono"
SRC_URI="https://github.com/kb10uy/MomiageMono/releases/download/v${MY_V}/${MY_P}-${MY_V}.zip"

LICENSE="OFL-1.1 Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}"

FONT_S="${S}"
FONT_SUFFIX="ttf"
