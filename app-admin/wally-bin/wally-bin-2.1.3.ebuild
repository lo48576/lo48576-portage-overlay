# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop udev

MY_PN="wally"
MY_PV="${PV}-linux"
MY_P="${MY_PN}-${MY_PV}"
DESCRIPTION="Flash your ZSA Keyboard the EZ way"
HOMEPAGE="https://github.com/zsa/wally"
SRC_URI="https://github.com/zsa/${MY_PN}/archive/refs/tags/${MY_PV}.tar.gz -> ${MY_PN}-${PV}.tar.gz"
SRC_URI+=" https://github.com/zsa/${MY_PN}/releases/download/${MY_PV}/wally -> ${MY_PV}.bin"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="
	net-libs/webkit-gtk:4
	virtual/libusb:1"

S="${WORKDIR}/${MY_P}"
QA_PRESTRIPPED="usr/bin/wally"

src_install() {
	newbin ${DISTDIR}/${MY_PV}.bin ${MY_PN}
	udev_newrules dist/linux64/50-wally.rules 50-wally.rules
	domenu dist/linux64/wally.desktop
	newicon appicon.png wally.png
}
