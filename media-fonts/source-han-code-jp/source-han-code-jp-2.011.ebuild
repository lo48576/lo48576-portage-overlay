# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font

DESCRIPTION="Derivative of Source Han Sans and Source Code Pro"
HOMEPAGE="https://github.com/adobe-fonts/source-han-code-jp"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${PV}R.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}/${P}R"

FONT_S="${S}/OTF"
FONT_SUFFIX="otf"
