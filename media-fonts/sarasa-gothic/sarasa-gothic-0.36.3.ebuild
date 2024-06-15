# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="A Chinese & Japanese programming font based on Iosevka and Source Han Sans"
HOMEPAGE="https://github.com/be5invis/Sarasa-Gothic"
SRC_URI="https://github.com/be5invis/Sarasa-Gothic/releases/download/v${PV}/${PN}-ttc-${PV}.7z"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64 ~ppc64"

DEPEND="app-arch/p7zip"

S=${WORKDIR}
FONT_SUFFIX="ttc"
