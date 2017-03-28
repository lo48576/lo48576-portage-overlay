# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font

MY_PN="${PN/_/-}"
MY_P="${MY_PN}-${PV}"
S_DIR="mix-mplus-ipa/63544"

DESCRIPTION="MigMix: Mix font of M+ and IPA Gothic"
HOMEPAGE="http://mix-mplus-ipa.osdn.jp/migmix/"
SRC_URI="mirror://sourceforge.jp/${S_DIR}/${MY_P}.zip"

LICENSE="IPAfont mplus-fonts"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}"

FONT_S="${S}/${MY_P}"
FONT_SUFFIX="ttf"
DOCS="${MY_P}/migmix-README.txt"
