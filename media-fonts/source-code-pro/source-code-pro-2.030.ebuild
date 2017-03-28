# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font

MY_PV_ROMAN="${PV}"
MY_PV_ITALIC="1.050"
MY_P="source-code-pro-${MY_PV_ROMAN}R-ro-${MY_PV_ITALIC}R-it"

DESCRIPTION="Monospaced font family for user interface and coding environments"
HOMEPAGE="https://github.com/adobe-fonts/source-code-pro"
SRC_URI="https://github.com/adobe-fonts/source-code-pro/archive/${MY_PV_ROMAN}R-ro/${MY_PV_ITALIC}R-it.tar.gz -> ${MY_P}.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""
RESTRICT="binchecks mirror strip"

DEPEND=""
S="${WORKDIR}/${MY_P}"

FONT_S="${S}/OTF"
FONT_SUFFIX="otf"
DOCS="README.md"
