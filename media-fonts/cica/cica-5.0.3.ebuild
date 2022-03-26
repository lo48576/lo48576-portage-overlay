# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit font

MY_P="Cica_v${PV}"

DESCRIPTION="Cica: Japanese monospace font for programming"
HOMEPAGE="https://github.com/miiton/Cica"
SRC_URI="emoji? ( https://github.com/miiton/Cica/releases/download/v${PV}/${MY_P}.zip )
	!emoji? ( https://github.com/miiton/Cica/releases/download/v${PV}/${MY_P}_without_emoji.zip )"

LICENSE="OFL-1.1 MIT Apache-2.0 BitstreamVera"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="+emoji"
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}"

FONT_S="${S}"
FONT_SUFFIX="ttf"
