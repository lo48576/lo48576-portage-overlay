# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="OrgaDoc is a program for generating and organizing documents"
HOMEPAGE="https://www.gnu.org/software/orgadoc/"
SRC_URI="http://ftpmirror.gnu.org/orgadoc/orgadoc-1.0.tar.xz"
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=sys-devel/autoconf-2.69"
RDEPEND="
	dev-libs/libxml2"

src_prepare() {
	default

	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" -C src install
	emake DESTDIR="${D}" -C utils install

	dodoc AUTHORS ChangeLog NEWS README

	newman docs/orgadoc.man orgadoc.1
	newman docs/orgadoc-init-readme.man orgadoc-init-readme.1
}
