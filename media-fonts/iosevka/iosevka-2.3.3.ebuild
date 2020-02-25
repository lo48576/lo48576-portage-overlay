# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Slender typeface for code, from code"
HOMEPAGE="https://be5invis.github.io/Iosevka/"
SRC_URI="https://github.com/be5invis/${PN}/releases/download/v${PV}/01-${P}.zip -> ${P}-01.zip
	term? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/02-${PN}-term-${PV}.zip -> ${P}-02-term.zip )
	type? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/03-${PN}-type-${PV}.zip -> ${P}-03-type.zip )
	cc? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/04-${PN}-cc-${PV}.zip -> ${P}-04-cc.zip )
	slab? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/05-${PN}-slab-${PV}.zip -> ${P}-05-slab.zip )
	term-slab? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/06-${PN}-term-slab-${PV}.zip -> ${P}-06-term-slab.zip )
	type-slab? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/07-${PN}-type-slab-${PV}.zip -> ${P}-07-type-slab.zip )
	cc-slab? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/08-${PN}-cc-slab-${PV}.zip -> ${P}-08-cc-slab.zip )"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64 ~ppc64"
IUSE="cc cc-slab slab +term term-slab type type-slab"

DEPEND="app-arch/unzip"

S=${WORKDIR}
FONT_S="${S}/ttf"
FONT_SUFFIX="ttf"
