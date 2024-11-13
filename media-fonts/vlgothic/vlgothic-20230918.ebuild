# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

MY_PN="VLGothic"

DESCRIPTION="Japanese TrueType font from Vine Linux"
HOMEPAGE="http://vlgothic.dicey.org/"
SRC_URI="https://github.com/daisukesuzuki/VLGothic/releases/download/${PV}/VLGothic-${PV}.tar.xz"

S="${WORKDIR}/${MY_PN}"

# M+ FONTS -> mplus-fonts
# sazanami -> BSD-2
LICENSE="vlgothic mplus-fonts BSD-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 sparc x86"

DOCS="Changelog README*"
FONT_S="${S}"
FONT_SUFFIX="ttf"
