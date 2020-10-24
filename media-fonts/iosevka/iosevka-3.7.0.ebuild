# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Slender typeface for code, from code"
HOMEPAGE="https://be5invis.github.io/Iosevka/"
SRC_URI="https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${P}.zip -> ${P}.zip
	slab? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-slab-${PV}.zip -> ${P}-slab.zip )
	curly? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-curly-${PV}.zip -> ${P}-curly.zip )
	curly-slab? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-curly-slab-${PV}.zip -> ${P}-curly-slab.zip )
	andale-mono? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss01-${PV}.zip -> ${P}-ss01.zip )
	anonymous-pro? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss02-${PV}.zip -> ${P}-ss02.zip )
	consolas? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss03-${PV}.zip -> ${P}-ss03.zip )
	menlo? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss04-${PV}.zip -> ${P}-ss04.zip )
	fira-mono? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss05-${PV}.zip -> ${P}-ss05.zip )
	liberation-mono? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss06-${PV}.zip -> ${P}-ss06.zip )
	monaco? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss07-${PV}.zip -> ${P}-ss07.zip )
	pragmata-pro? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss08-${PV}.zip -> ${P}-ss08.zip )
	source-code-pro? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss09-${PV}.zip -> ${P}-ss09.zip )
	envy-code-r? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss10-${PV}.zip -> ${P}-ss10.zip )
	x-windows-fixed? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss11-${PV}.zip -> ${P}-ss11.zip )
	ubuntu-mono? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss12-${PV}.zip -> ${P}-ss12.zip )
	lucida? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss13-${PV}.zip -> ${P}-ss13.zip )
	jetbrains-mono? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-ss14-${PV}.zip -> ${P}-ss14.zip )
	aile? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-aile-${PV}.zip -> ${P}-aile.zip )
	etoile? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-etoile-${PV}.zip -> ${P}-etoile.zip )
	sparkle? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/pkg-${PN}-sparkle-${PV}.zip -> ${P}-sparkle.zip )
	"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64 ~ppc64"
IUSE="aile andale-mono anonymous-pro consolas curly curly-slab envy-code-r etoile fira-mono jetbrains-mono liberation-mono lucida menlo monaco pragmata-pro slab source-code-pro sparkle ubuntu-mono x-windows-fixed"

DEPEND="app-arch/unzip"

S=${WORKDIR}
FONT_S="${S}/ttc"
FONT_SUFFIX="ttc"
